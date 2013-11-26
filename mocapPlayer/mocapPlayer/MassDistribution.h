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
	MassDistributionType type; //type of the solid representing the segment

	/*the stadium solid is the most complex solid, to define it you need the four following parameter and the length of the segment.
	 * The cylinder, cone, point or other can be obtained by setting particular members equal to 0.*/

	/*                                 ___
	 *    stadium boundary volume:    (___)
	 *        ___ ___
	 *     r{ ___|___
	 *        ___|___
	 *         t   t
	 *
	 *         --> perimeter is 4t + 2pi*r
	 * */


	double r0; // radius of the semi-circle of the boundary stadium.
	double t0; // half of the distance separating semi-circles of the boundary stadium. With type set to cylinder or point it's equal to zero

	double Ixx, Ixy,Ixz,Iyy,Iyz,Izz; //values of the inertia tensor. Either computed after loading in .amd file or predefined in .amd file using type = OTHER.
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
	Mass m_pMassList[MAX_BONES_IN_ASF_FILE];

private:
	int NUM_BONES_IN_AMD_FILE;
protected:
	//parses the file that specifies the mass distribution.
	int readAMDfile(char *amd_filename);
	void removeCR(char * str);


};

#endif /* MASSDISTRIBUTION_H_ */
