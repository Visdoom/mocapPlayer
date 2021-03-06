/*
 * computation.h
 *
 *  Created on: Jul 2, 2013
 *      Author: Sophie Laturnus
 */

#ifndef COMPUTATION_H_
#define COMPUTATION_H_

#include "types.h"


class Computation {
public:
	Computation();
	virtual ~Computation();

	// Computes the center of mass of every segment in global coordinates and stores it in bone.cm
	void computeLocalCenterOfMass();

	void computeInertiaTensor();

	// Computes the center of mass of the rigid body system in global coordinates.
	// The way of computation is defined by MassDistributionType
	void computeGeneralCenterOfMass();

	//Computes the angular momentum about the Skeleton's cm
	void computeAngularMomentum();

	//Computes the linear momentum
	void computeLinearMomentum();

	//Adds Motion m to m_pMotionList.
	void LoadMotion(Motion * m);

	//Adds Mass Distribution m to m_pMassDistributionList.
	void LoadMassDistribution(MassDistribution * m);

	//Adds Skeleton s to m_pSkeletonList.
	void LoadSkeleton(Skeleton * s);

	//Empties all lists and resets the object to constructor state.
	void Reset(void);

	Skeleton * GetSkeleton(int skeletonIndex);
	Motion * GetMotion(int skeletonIndex);

	//returns the current leg swing of Skeleton i
	LegSwing GetLegSwing(int skelNum);

	Skeleton * m_pSkeletonList[MAX_SKELS]; //List of Skeletons whose features are to be computed
	MassDistribution * m_pMassDistributionList[MAX_SKELS];
	Motion *m_pMotionList[MAX_SKELS]; //List of Motions assigned to the models. Motion[i] is assigned to Model[i].
	int numOfSkeletons; //keeps track of the number of Skeletons in the list.
	int numOfMassDist;
	int numOfMotions;

private:
	//Computes center of mass of point mass
	void computeCMOfPointMass(Bone * bone);
	//Computes center of mass of solid cylinder
	void computeCMOfCylinderMass(Bone * bone);
	//Computes center of mass like defined in mass distribution.
	void computeCMOfOtherMass(Bone * bone, double distribution);
	//Computes the moments of inertia for a point mass at the bones cm , storing them in Ixx, Ixy, ...
	void computeInertiaOfPoint(Mass * mass);
	//Computes the moments of inertia for a solid rod rotating about the segment's center of mass, storing them in Ixx, Ixy, ...
	void computeInertiaOfCylinder(Bone * bone, Mass * mass);
	//Computes the moments of inertia for a solid stadium rotating about the segment's center of mass, storing them in Ixx, Ixy, ...
	void computeInertiaOfStadium(Bone * bone, Mass * mass);

	//Traverses the Skeleton recursively (first depth than breadth),
	void traverse(Bone * ptr, int skelNum, double transform[4][4], char c);

	void updatePosition(Bone * ptr, Bone * bone, int skelNum, double transform[4][4]);
	// computes global cm of Bone ptr
	void computeCM(Bone * ptr, int skelNum, double transform[4][4]);

	//checks which leg is swinging.
	void checkLegSwing(double velocity[3], Bone * bone, int skelNum);
	//sets the legSwing of Skeleton skelNum accordingly. legSwing[skelNum][0] stores previous, legSwing[skelNum][1] current value.
	void setLegSwing(int skelNum);




	void computePos(Bone * ptr, double transform[4][4]);


	double totalMass;
	bool right;
	bool left;
	LegSwing swing[MAX_SKELS];

	//double transform[4][4];

};

#endif /* CMCOMPUTE_H_ */
