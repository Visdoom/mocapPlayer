/*
 * computation.cpp
 *
 *  Created on: Jul 2, 2013
 *      Author: Sophie Laturnus
 */
#include <stdlib.h>
#include <cstdio>
#include <string.h>

#include "types.h"
#include "transform.h"
#include "MassDistribution.h"
#include "skeleton.h"
#include "motion.h"

#include "computation.h"


Computation::Computation() {

	for (int i = 0; i < MAX_SKELS; i++)
	{
		m_pSkeletonList[i] = NULL;
		m_pMassDistributionList[i] = NULL;
		m_pMotionList[i] = NULL;

	}


	numOfSkeletons = 0;
	numOfMassDist = 0;
	numOfMotions = 0;

	totalMass = 0.0;

}

Computation::~Computation() {

	if(m_pSkeletonList != NULL)
	{
		delete [] m_pSkeletonList;
	}
	if(m_pMassDistributionList != NULL)
	{
		delete [] m_pMassDistributionList;
	}
	if (m_pMotionList != NULL)
	{
		delete [] m_pMotionList;
	}

}

//Computes local center of mass of each bone and stores it in bone.cm
void Computation::computeLocalCenterOfMass(){

	MassDistributionType type;
	Mass mass;
	Bone * bone;

	if(m_pSkeletonList != NULL)
	{
		for (int i = 0; i < numOfSkeletons && i < MAX_SKELS; i++) {

			bone = m_pSkeletonList[i]->getRoot();

			if (m_pMassDistributionList[i] != NULL)
			{
				printf("MassDistrList not empty\n");
				for (int j = 0; j < m_pMassDistributionList[i]->getNumOfMasses(); j++)
				{

					type = m_pMassDistributionList[i]->m_pMassList[j].type;
					mass = m_pMassDistributionList[i]->m_pMassList[j];
					if (type == POINT)
					{
						computePointMass(m_pSkeletonList[i]->getBone(bone,j)); //computes center of mass assuming a point mass

					} else if (type == CYLINDER) {
						computeCylinderMass(m_pSkeletonList[i]->getBone(bone, j)); // computes center of mass assuming a solid cylinder
					} else if (type == OTHER) {
						computeOtherMass(m_pSkeletonList[i]->getBone(bone, j), mass.distribution); // computes center of mass how it is described in mass distribution
					}
				}


			} else { //default if no Mass Distribution is loaded so far

				for(int j=0; j < m_pSkeletonList[i]->NUM_BONES_IN_ASF_FILE; j++)
				{
					computePointMass(m_pSkeletonList[i]->getBone(bone, j));
				}
			}

		}

	}
}

void Computation::computeGeneralCenterOfMass() {


	double translation[3], rotation[3];

	double R[4][4],Rx[4][4],Ry[4][4],Rz[4][4];

	for (int i = 0; i < numOfSkeletons && i < MAX_SKELS; i++)
	{
		totalMass = 0.0;	//reset total Mass
		double transform[4][4];
		identity(transform); // reset transform matrix to identity

		m_pSkeletonList[i]->cm[0] = 0.0;
		m_pSkeletonList[i]->cm[1] = 0.0;
		m_pSkeletonList[i]->cm[2] = 0.0;


		if (m_pMassDistributionList[i] != NULL) {
			m_pSkeletonList[i]->GetTranslation(translation);
			m_pSkeletonList[i]->GetRotationAngle(rotation);

			//creating Rotation matrix for initial rotation of Skeleton
			rotationX(Rx, rotation[0]);
			rotationY(Ry, rotation[1]);
			rotationZ(Rz, rotation[2]);

			matrix_mult(Rz, Ry, R);
			matrix_mult(R, Rx, R);

			matrix_mult(transform, R, transform);

			transform[0][3] += (MOCAP_SCALE*translation [0]);
			transform[1][3] += (MOCAP_SCALE*translation [1]);
			transform[2][3] += (MOCAP_SCALE*translation [2]);

			traverse(m_pSkeletonList[i]->getRoot(), i, transform);

			m_pSkeletonList[i]->cm[0] /= (totalMass);
			m_pSkeletonList[i]->cm[1] /= (totalMass);
			m_pSkeletonList[i]->cm[2] /= (totalMass);


			printf("skeleton[%d]->cm: %f, %f, %f\n", i, m_pSkeletonList[i]->cm[0], m_pSkeletonList[i]->cm[1], m_pSkeletonList[i]->cm[2]);

		} else {
			printf("Entry of m_pMotionList[%d] is empty.\n", i);
			//exit(0);
		}

	}



}

// -------------------------------------------------- //

void Computation::LoadSkeleton(Skeleton * s) {

	if (numOfSkeletons < MAX_SKELS)
	{
		m_pSkeletonList[numOfSkeletons] = s;
		numOfSkeletons++;
	}

}

void Computation::LoadMassDistribution(MassDistribution * m) {

	if (numOfMassDist < MAX_SKELS)
	{
		m_pMassDistributionList[numOfMassDist] = m;
		numOfMassDist++;
	}

}

void Computation::LoadMotion(Motion * m) {

	if (numOfMotions < MAX_SKELS)
	{
		if (numOfSkeletons > 0)
		{
			if(numOfSkeletons > numOfMotions)
			{
				m_pMotionList[numOfMotions] = m;
				numOfMotions++;

			} else {
				m_pMotionList[numOfMotions - 1] = m; //last Motion gets replaced
			}

		}

	}
}

Skeleton * Computation::GetSkeleton(int skeletonIndex) {

	if (skeletonIndex < 0 || skeletonIndex >= numOfSkeletons)
	{
		printf("Error in Computation::GetSkeleton: skeleton index %d is illegal.\n", skeletonIndex);
		exit(0);
	}
	return m_pSkeletonList[skeletonIndex];
}


Motion * Computation::GetMotion(int skeletonIndex) {

	if (skeletonIndex < 0 || skeletonIndex >= numOfSkeletons)
	{
		printf("Error in Computation::GetMotion: skeleton index %d is illegal.\n", skeletonIndex);
		exit(0);
	}
	return m_pMotionList[skeletonIndex];
}

void Computation::Reset(void) {

	for(int skeletonIndex = 0; skeletonIndex < MAX_SKELS; skeletonIndex++)
	{

		if (m_pSkeletonList[skeletonIndex] != NULL)
		{
			m_pSkeletonList[skeletonIndex] = NULL;
		}
		if (m_pMotionList[skeletonIndex] != NULL)
		{
			m_pMotionList[skeletonIndex] = NULL;
		}
		if(m_pMassDistributionList[skeletonIndex] != NULL)
		{
			m_pMassDistributionList[skeletonIndex] = NULL;
		}
	}

	numOfSkeletons = 0;
	numOfMotions = 0;
	numOfMassDist = 0;

	totalMass = 0.0;

}

//---------------------------------------------------------------------//

void Computation::computePointMass(Bone * bone) {

	bone->cm[0] = bone->dir[0]*bone->length*0.5;
	bone->cm[1] = bone->dir[1]*bone->length*0.5;
	bone->cm[2] = bone->dir[2]*bone->length*0.5;
}

void Computation::computeCylinderMass(Bone * bone){

	bone->cm[0] = bone->dir[0]*bone->length*0.5;
	bone->cm[1] = bone->dir[1]*bone->length*0.5;
	bone->cm[2] = bone->dir[2]*bone->length*0.5;
}

void Computation::computeOtherMass(Bone * bone, double distribution){

	bone->cm[0] = bone->dir[0]*bone->length*distribution;
	bone->cm[1] = bone->dir[1]*bone->length*distribution;
	bone->cm[2] = bone->dir[2]*bone->length*distribution;

}

void Computation::traverse(Bone * ptr, int skelNum, double transform[4][4]){

		char name[256] = "";

	if (ptr != NULL) {

		strcat(name, ptr->name);
		strcat(name, " transform");
		matrix_print(name, transform);

		double Rx[4][4], Ry[4][4], Rz[4][4], M[4][4]; //store rotation matrices.
		double transformBackUp[4][4];
		double translation[4][4];

		double C[4][4], Cinv[4][4];

		matrix_copy(transform, transformBackUp);

		//create homogeneous transformation to next frame.

		identity(M);
		identity(translation);
		identity(Rx);
		identity(Ry);
		identity(Rz);

		// compute C
		rotationZ(Rz, ptr->axis_z);
		rotationY(Ry, ptr->axis_y);
		rotationX(Rx, ptr->axis_x);

		matrix_mult(Rz, Ry, C);
		matrix_mult(C, Rx, C);

		// compute M
		rotationX(Rx, (ptr->rx));
		rotationY(Ry, (ptr->ry));
		rotationZ(Rz, (ptr->rz));

		matrix_mult(Rz, Ry, M);
		matrix_mult(M, Rx, M);

		M[0][3] += ptr->tx;
		M[1][3] += ptr->ty;
		M[2][3] += ptr->tz;

		matrix_mult(transform, C, transform);
		matrix_mult(transform, M, transform);

		computeCM(ptr, skelNum, transform);

		translation[0][3] = ptr->dir[0]*ptr->length;
		translation[1][3] = ptr->dir[1]*ptr->length;
		translation[2][3] = ptr->dir[2]*ptr->length;

		matrix_mult(transform, translation, transform);
		matrix_transpose(C, Cinv);
		matrix_mult(transform, Cinv, transform);

		traverse(ptr->child, skelNum, transform);

		traverse(ptr->sibling, skelNum, transformBackUp);


	}

}



void Computation::computeCM(Bone * ptr, int skelNum, double transform[4][4]){

	//TODO computation of gcm of bone
	double lcm[4], temp[4];
	int mass = 0;


	temp[0] = ptr->cm[0];
	temp[1] = ptr->cm[1];
	temp[2] = ptr->cm[2];
	temp[3] = 1;


	matrix_v4_mult(transform, temp, lcm);
	printf("lcm: %f %f %f %f\n", lcm[0], lcm[1], lcm[2], lcm [3]);

	if(m_pMassDistributionList[skelNum]->getMass(ptr->name) != NULL) {
		mass = m_pMassDistributionList[skelNum]->getMass(ptr->name)->mass;
	}
	totalMass += mass;
	m_pSkeletonList[skelNum]->cm[0] += (lcm[0] * mass);
	m_pSkeletonList[skelNum]->cm[1] += (lcm[1] * mass);
	m_pSkeletonList[skelNum]->cm[2] += (lcm[2] * mass);

}

