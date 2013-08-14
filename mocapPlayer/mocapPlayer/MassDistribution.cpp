/*
 * MassDistribution.cpp
 *
 *  Created on: Jul 2, 2013
 *      Author: Sophie Laturnus
 */
#include <stdlib.h>
#include <fstream>
#include <cstring>

#include "MassDistribution.h"

MassDistribution::MassDistribution(char *amd_filename) {

	// Initialization
	NUM_BONES_IN_AMD_FILE = 0;
	m_pMassList[0].idx = 0;
	m_pMassList[0].mass = 0;
	m_pMassList[0].distribution = 0;
	m_pMassList[0].type = POINT;

	m_pMassList[0].r0 = 0.; m_pMassList[0].t0 = 0.;
	m_pMassList[0].r1 = 0.; m_pMassList[0].t1 = 0.;

	m_pMassList[0].Ixx = 0.; m_pMassList[0].Ixy = 0.; m_pMassList[0].Ixz = 0.;
	m_pMassList[0].Iyy = 0.; m_pMassList[0].Iyz = 0.; m_pMassList[0].Izz = 0.;


	int code = readAMDfile(amd_filename);

	if (code < 0) {
		throw 1;
	}
}

MassDistribution::~MassDistribution() {

	if(m_pMassList != NULL)
	{
		delete [] m_pMassList;
	}

}

void MassDistribution::print() {

	if (m_pMassList != NULL)
	{
		char t;


		for (int i = 0; i < NUM_BONES_IN_AMD_FILE; i++) {

			if (m_pMassList[i].type == POINT)
			{
				t = 'p';
			}
			if (m_pMassList[i].type == CYLINDER)
			{
				t = 'c';
			}
			if (m_pMassList[i].type == OTHER)
			{
				t = 'o';
			}

			 printf("bone %s has type %c \n",m_pMassList[i].segName, t);
			}
	}
}

Mass * MassDistribution::getMass(char segName[256]) {

	int massIndex = 0;
	bool done = false;

	for(int i = 0; i < NUM_BONES_IN_AMD_FILE && !done; i++)
	{
		if (strcmp(m_pMassList[i].segName, segName) == 0)
		{
			massIndex = i;
			done = true;
		}
	}
	if(!done) {
		return NULL;
	}
	return &m_pMassList[massIndex];
}

int MassDistribution::getNumOfMasses(){
	return NUM_BONES_IN_AMD_FILE;
}

// --------------------------------------------------------------- //

// parses in the AMD File and stores values in Mass array.
int MassDistribution::readAMDfile(char *amd_filename)
{
	//open file
	std::ifstream is (amd_filename, std::ios::in);
	if(is.fail())
		return -1;

	char str[2048], keyword[256];
	MassDistributionType type = POINT;

	//read in type of geometrical solid representing the segment
	while (1)
	  {
	    is.getline(str, 2048);
	    removeCR(str);
	    sscanf(str, "%s", keyword);
	    if (strcmp(keyword, ":massdata") == 0)
	      break;

	    if(strcmp(keyword, "point") == 0)
	      	type = POINT;

	    if(strcmp(keyword, "cylinder") == 0)
	    	      	type = CYLINDER;

	    if(strcmp(keyword, "other") == 0)
	    	      	type = OTHER;

	  }

	//read mass distribution data
	 is.getline(str, 2048);
	 removeCR(str);

	 bool done = false;
	 for (int i = 0; (!done) && (i < MAX_BONES_IN_ASF_FILE); i++)
	 {
		 //initializing mass distribution object
		 m_pMassList[i].idx = 0;
		 m_pMassList[i].mass = 0;
		 m_pMassList[i].distribution = 0;

		 m_pMassList[i].r0 = 0.; m_pMassList[i].t0 = 0.;
		 m_pMassList[i].r1 = 0.; m_pMassList[i].t1 = 0.;

		 m_pMassList[i].Ixx = 0.; m_pMassList[i].Ixy = 0.; m_pMassList[i].Ixz = 0.;
		 m_pMassList[i].Iyy = 0.; m_pMassList[i].Iyz = 0.; m_pMassList[i].Izz = 0.;



		 NUM_BONES_IN_AMD_FILE++;

		while(1)
		 {
			 is.getline(str, 2048);
			 removeCR(str);
			 sscanf(str, "%s", keyword);

			 if(strcmp(keyword, "end") == 0)
			  	   break;

			 if(strcmp(keyword, ":end") == 0)
			 {
				 NUM_BONES_IN_AMD_FILE -= 1;
			     done=true;
			     break;
			 }


			 // id of the mass distribution
			 if(strcmp(keyword, "id") == 0)
				 m_pMassList[i].idx = NUM_BONES_IN_AMD_FILE;


			 // name of the assigned segment
			 if(strcmp(keyword, "name") == 0)
				 sscanf(str, "%s %s", keyword, m_pMassList[i].segName);


			  // mass of the segment
			 if(strcmp(keyword, "mass") == 0)
				 sscanf(str, "%s %lf", keyword, &m_pMassList[i].mass);

			 // mass distribution of the segment.
			 // 1.0 means equally distributed
			 if(strcmp(keyword, "dist") == 0)
				 sscanf(str, "%s %lf", keyword, &m_pMassList[i].distribution);

			 m_pMassList[i].type = type;

		 }
	 }

	 is.close();
	 printf("%d samples in %s were read.\n", NUM_BONES_IN_AMD_FILE, amd_filename);
	 return 0;
}

void MassDistribution::removeCR(char * str)
{
  if (str[strlen(str) - 1] == '\r')
    str[strlen(str) - 1] = 0;
}



