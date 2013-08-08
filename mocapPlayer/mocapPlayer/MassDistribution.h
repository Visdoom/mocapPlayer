/*
 * MassDistribution.h
 *
 *  Created on: Jul 2, 2013
 *      Author: Sophie Laturnus
 */

#ifndef MASSDISTRIBUTION_H_
#define MASSDISTRIBUTION_H_

#include "types.h"

struct Mass{

	int idx; // index
	char segName[256]; // name of the segment the mass is assigned to
	double mass; // mass of the segment
	double distribution; //way of mass distribution. 1.0 means equal, other values indicate the relative position of the center of mass.
	MassDistributionType type;
};


class MassDistribution {
public:
	MassDistribution(char *amd_filename);
	virtual ~MassDistribution();

	//returns Mass with Index index
	Mass * getMass(char segmentName[256]);

	//prints entries of m_pMassList
	void print();

	int getNumOfMasses();

	//stores the mass distribution
	//TODO make it const?
	Mass m_pMassList[MAX_BONES_IN_ASF_FILE];
private:
	int NUM_BONES_IN_AMD_FILE;

protected:
	//parses the file that specifies the mass distribution.
	int readAMDfile(char *amd_filename);
	void removeCR(char * str);


};

#endif /* MASSDISTRIBUTION_H_ */
