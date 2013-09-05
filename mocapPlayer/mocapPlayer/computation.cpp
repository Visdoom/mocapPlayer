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
				for (int j = 0; j < m_pMassDistributionList[i]->getNumOfMasses(); j++)
				{

					type = m_pMassDistributionList[i]->m_pMassList[j].type;
					mass = m_pMassDistributionList[i]->m_pMassList[j];
					if (type == POINT) computeCMOfPointMass(m_pSkeletonList[i]->getBone(bone,j)); //computes center of mass assuming a point mass

					if (type == CYLINDER || STADIUM) computeCMOfCylinderMass(m_pSkeletonList[i]->getBone(bone, j)); // computes center of mass assuming a solid cylinder

					if (type == OTHER) computeCMOfOtherMass(m_pSkeletonList[i]->getBone(bone, j), mass.distribution); // computes center of mass how it is described in mass distribution

				}


			} else { //default if no Mass Distribution is loaded so far

				for(int j=0; j < m_pSkeletonList[i]->NUM_BONES_IN_ASF_FILE; j++)
				{
					computeCMOfPointMass(m_pSkeletonList[i]->getBone(bone, j));
				}
			}

		}

	}
}

void Computation::computeInertiaTensor(){

	Bone * root;
	Bone * bone;
	Mass * mass;

	if(m_pSkeletonList != NULL)
	{
		for(int i = 0; i < numOfSkeletons && i < MAX_SKELS; i++)
		{
			root = m_pSkeletonList[i]->getRoot();

			if (m_pMassDistributionList[i] != NULL)
			{
				for (int j = 0; j < m_pSkeletonList[i]->NUM_BONES_IN_ASF_FILE; j++)
				{
					bone = m_pSkeletonList[i]->getBone(root, j);

					if(m_pMassDistributionList[i]->getMass(bone->name) != NULL) {
\
						mass = m_pMassDistributionList[i]->getMass(bone->name);

						if (mass->type == POINT) computeInertiaOfPoint(bone, mass);

						if (mass->type == CYLINDER) computeInertiaOfCylinder(bone, mass);

						if (mass->type == STADIUM) computeInertiaOfStadium(bone, mass);
					}

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

		//store previous position of gcm
		m_pSkeletonList[i]->cm_prev[0] = m_pSkeletonList[i]->cm[0];
		m_pSkeletonList[i]->cm_prev[1] = m_pSkeletonList[i]->cm[1];
		m_pSkeletonList[i]->cm_prev[2] = m_pSkeletonList[i]->cm[2];

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

			traverse(m_pSkeletonList[i]->getRoot(), i, transform, 'g');

			m_pSkeletonList[i]->cm[0] /= (totalMass);
			m_pSkeletonList[i]->cm[1] /= (totalMass);
			m_pSkeletonList[i]->cm[2] /= (totalMass);

			m_pSkeletonList[i]->totalMass = totalMass;

		} else {
			printf("Entry of m_pMotionList[%d] is empty.\n", i);
			//exit(0);
		}

	}



}

//Computes the angular momentum about the general center of mass
void Computation::computeAngularMomentum() {

	double translation[3], rotation[3];
	double R[4][4],Rx[4][4],Ry[4][4],Rz[4][4];

	Bone * root;
	Mass * mass;

	if(m_pSkeletonList != NULL)
	{

		for (int i = 0; i < numOfSkeletons && i < MAX_SKELS; i++)
		{
			double transform[4][4];
			identity(transform);

			double r_i_cm[m_pSkeletonList[i]->NUM_BONES_IN_ASF_FILE][3]; //stores previous position of local center of mass in global cs


			root = m_pSkeletonList[i]->getRoot();

			if(m_pMassDistributionList[i] != NULL) {

				//reset angular momentum
				m_pSkeletonList[i]->H[0] = 0.;
				m_pSkeletonList[i]->H[1] = 0.;
				m_pSkeletonList[i]->H[2] = 0.;


				//store old local cm in global cs of each bone:

				for( int k = 0; k < m_pSkeletonList[i]->NUM_BONES_IN_ASF_FILE; k++)
				{
					//store previous position of local cm in global cs in r_i_cm
					r_i_cm[k][0] = m_pSkeletonList[i]->getBone(root, k)->r_i[0];
					r_i_cm[k][1] = m_pSkeletonList[i]->getBone(root, k)->r_i[1];
					r_i_cm[k][2] = m_pSkeletonList[i]->getBone(root, k)->r_i[2];
				}

				//compute current position of lcm in global cs

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

					traverse(root, i, transform, 'h');



				for(int j = 0; j < m_pSkeletonList[i]->NUM_BONES_IN_ASF_FILE; j++) { //for every bone compute: (r_i - r_cm) x m_i(v_i - v_cm) + I_i*w_i

					double rel_pos[3], v_i[3], v_cm[3], v_rel[3], I[3][3], w_i[3], local_inertia[3], cross[3];
					Bone * bone;
					bone = m_pSkeletonList[i]->getBone(root, j);

					if(m_pMassDistributionList[i]->getMass(bone->name) != NULL) {

						mass = m_pMassDistributionList[i]->getMass(bone->name);

						if(mass->mass != 0)	printf("(r_i_cm): prev_local_cm: %f %f %f\n", r_i_cm[j][0], r_i_cm[j][1], r_i_cm[j][2]);

						if(mass->mass != 0) printf("(r_i) local_cm: %f %f %f\n", bone->r_i[0], bone->r_i[1], bone->r_i[2]);

						//rel_pos = r_i - r_cm
						rel_pos[0] = bone->r_i[0] - m_pSkeletonList[i]->cm[0];
						rel_pos[1] = bone->r_i[1] - m_pSkeletonList[i]->cm[1];
						rel_pos[2] = bone->r_i[2] - m_pSkeletonList[i]->cm[2];

						if(mass->mass != 0) printf("rel_pos: %f %f %f\n", rel_pos[0], rel_pos[1], rel_pos[2]);

						//v_i = r_i - r_i_cm
						v_i[0] = bone->r_i[0] - r_i_cm[j][0];
						v_i[1] = bone->r_i[1] - r_i_cm[j][1];
						v_i[2] = bone->r_i[2] - r_i_cm[j][2];

						if(mass->mass != 0) printf("v_i: %f %f %f\n", v_i[0], v_i[1], v_i[2]);
						//v_cm = r_cm - r_cm_prev
						v_cm[0] = m_pSkeletonList[i]->cm[0] - m_pSkeletonList[i]->cm_prev[0];
						v_cm[1] = m_pSkeletonList[i]->cm[1] - m_pSkeletonList[i]->cm_prev[1];
						v_cm[2] = m_pSkeletonList[i]->cm[2] - m_pSkeletonList[i]->cm_prev[2];

						if(mass->mass != 0) printf("cm: %f %f %f    cm_prev: %f %f %f\n", m_pSkeletonList[i]->cm[0], m_pSkeletonList[i]->cm[1], m_pSkeletonList[i]->cm[2], m_pSkeletonList[i]->cm_prev[0], m_pSkeletonList[i]->cm_prev[1], m_pSkeletonList[i]->cm_prev[2]);

						if(mass->mass != 0) printf("v_cm: %f %f %f\n", v_cm[0], v_cm[1], v_cm[2] );
						//v_rel = v_i - v_cm
						v_rel[0] = v_i[0] - v_cm[0];
						v_rel[1] = v_i[1] - v_cm[1];
						v_rel[2] = v_i[2] - v_cm[2];

						/*
						 *
						 * first try just point masses, without any inertia
						 *
							//Inertia tensor
							printf("mass seg name: %s\n", mass->segName);
							printf("mass.Ixx: %f\n", mass->Ixx);
							I[0][0] = mass->Ixx;
							I[0][1] = I[1][0] = mass->Ixy;
							I[0][2] = I[2][0] = mass->Ixz;
							I[1][1] = mass->Iyy;
							I[1][2] = I[2][1] = mass->Iyz;
							I[2][2] = mass->Izz;

							//printf("inertia:\n %f %f %f\n %f %f %f\n %f %f %f\n " ,
							//	I[0][0], I[0][1], I[0][2], I[1][0], I[1][1], I[1][2], I[2][0], I[2][1], I[2][2]);

							//w_i = {rx - rx_prev, ry - ry_prev, rz - rz_prev}
							w_i[0] = bone->rx - bone->rx_prev;
							w_i[1] = bone->ry - bone->ry_prev;
							w_i[2] = bone->rz - bone->rz_prev;


							//local_inertia = I_i*w_i
							matrix3_v3_mult(I,w_i, local_inertia);
						*/


						//cross = (r_i - r_cm) x m_i(v_i - v_cm)
						v_rel[0] *= m_pMassDistributionList[i]->getMass(bone->name)->mass;
						v_rel[1] *= m_pMassDistributionList[i]->getMass(bone->name)->mass;
						v_rel[2] *= m_pMassDistributionList[i]->getMass(bone->name)->mass;


						v3_cross(rel_pos, v_rel, cross);


						//H is sum of angular momentum of every bone
						/*	m_pSkeletonList[i]->H[0] += cross[0] + local_inertia[0];
							m_pSkeletonList[i]->H[1] += cross[1] + local_inertia[1];
							m_pSkeletonList[i]->H[2] += cross[2] + local_inertia[2];
						*/

						m_pSkeletonList[i]->H[0] += cross[0];
						m_pSkeletonList[i]->H[1] += cross[1];
						m_pSkeletonList[i]->H[2] += cross[2];


					} //if end
				}//for bones end
			}//if end

			printf("H skeleton %d: %f %f %f\n", i, m_pSkeletonList[i]->H[0], m_pSkeletonList[i]->H[1], m_pSkeletonList[i]->H[2]);
		}// for Skeletons end
	}
}

// ------------------------------------------Getter and Setter----------------------------------------------------------------------------------------------------------------- //

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

//------------------------private COM ------------------------------------------------------------------------------------------//

void Computation::computeCMOfPointMass(Bone * bone) {

	bone->cm[0] = bone->dir[0]*bone->length*0.5;
	bone->cm[1] = bone->dir[1]*bone->length*0.5;
	bone->cm[2] = bone->dir[2]*bone->length*0.5;
}

void Computation::computeCMOfCylinderMass(Bone * bone){

	bone->cm[0] = bone->dir[0]*bone->length*0.5;
	bone->cm[1] = bone->dir[1]*bone->length*0.5;
	bone->cm[2] = bone->dir[2]*bone->length*0.5;
}


void Computation::computeCMOfOtherMass(Bone * bone, double distribution){

	bone->cm[0] = bone->dir[0]*bone->length*distribution;
	bone->cm[1] = bone->dir[1]*bone->length*distribution;
	bone->cm[2] = bone->dir[2]*bone->length*distribution;

}


void Computation::computeCM(Bone * ptr, int skelNum, double transform[4][4]){

	//computation of gcm of bone
	double lcm[4], temp[4];
	int mass = 0;


	temp[0] = ptr->cm[0];
	temp[1] = ptr->cm[1];
	temp[2] = ptr->cm[2];
	temp[3] = 1;


	matrix_v4_mult(transform, temp, lcm);
	//printf("lcm: %f %f %f %f\n", lcm[0], lcm[1], lcm[2], lcm [3]);

	if(m_pMassDistributionList[skelNum]->getMass(ptr->name) != NULL) {
		mass = m_pMassDistributionList[skelNum]->getMass(ptr->name)->mass;
	}
	totalMass += mass;
	m_pSkeletonList[skelNum]->cm[0] += (lcm[0] * mass);
	m_pSkeletonList[skelNum]->cm[1] += (lcm[1] * mass);
	m_pSkeletonList[skelNum]->cm[2] += (lcm[2] * mass);

}


//---------------------------private Inertia----------------------------------------------------------------------------------------------//

//Computes the moments of inertia of a point mass at the bones local center of mass rotating about the joint's axes.
// Moment is computed as such: m*r^2 with r distance to axis od rotation
void Computation::computeInertiaOfPoint(Bone * bone, Mass * mass){

	double z[3] = {0,0,1}; double y[3] = {0,1,0}; double x[3] = {1,0,0};

	double r[3];
	double dot;

	//rotation about x-axis

	dot = v3_dot(x, bone->cm);

	r[0] = bone->cm[0] - (dot*x[0]);
	r[1] = bone->cm[1] - (dot*x[1]);
	r[2] = bone->cm[2] - (dot*x[2]);

	mass->Ixx = mass->mass * v3_mag(r);


	//rotation about y-axis

	dot = v3_dot(y, bone->cm);

	r[0] = bone->cm[0] - (dot*y[0]);
	r[1] = bone->cm[1] - (dot*y[1]);
	r[2] = bone->cm[2] - (dot*y[2]);

	mass->Iyy = mass->mass * v3_mag(r);


	//rotation about z-axis
	dot = v3_dot(z, bone->cm);

	r[0] = bone->cm[0] - (dot*z[0]);
	r[1] = bone->cm[1] - (dot*z[1]);
	r[2] = bone->cm[2] - (dot*z[2]);

	mass->Izz = mass->mass * v3_mag(r);



	mass->Ixy = 0.;
	mass->Ixz = 0.;
	mass->Iyz = 0.;

	/*
		printf("mass.name: %s\n", mass->segName);
		printf("inertia: %f %f %f %f %f %f\n", mass->Ixx, mass->Ixy, mass->Ixz, mass->Iyy, mass->Iyz, mass->Izz);
	*/


}

//computes moments of inertia of a solid cylinder rotating about the joint's axes.
//computation: (1/3)*M*L^2 + (1/4)*M*r^2
//assumption: cylinder along z-axis
void Computation::computeInertiaOfCylinder(Bone * bone, Mass * mass){

	//Ixx = (1/4)*M*r^2 + (1/3)*M*h^2 = Iyy
	mass->Ixx = (((1/4)*mass->mass*mass->r0*mass->r0) + ((1/3)*mass->mass*bone->length*bone->length));

	mass->Iyy = (((1/4)*mass->mass*mass->r0*mass->r0) + ((1/3)*mass->mass*bone->length*bone->length));

	mass->Izz = (1/2)*mass->mass*mass->r0*mass->r0;

	mass->Ixy = 0.;
	mass->Ixz = 0.;
	mass->Iyz = 0.;

}

//TODO
void Computation::computeInertiaOfStadium(Bone * bone, Mass * mass){


}

//-------------------------------------------------------------------------------------------------------------------------------------------------//

void Computation::traverse(Bone * ptr, int skelNum, double transform[4][4], char c){

	if (ptr != NULL) {

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

		if(c == 'g') computeCM(ptr, skelNum, transform);
		if(c == 'h') computePos(ptr, transform);

		translation[0][3] = ptr->dir[0]*ptr->length;
		translation[1][3] = ptr->dir[1]*ptr->length;
		translation[2][3] = ptr->dir[2]*ptr->length;

		matrix_mult(transform, translation, transform);
		matrix_transpose(C, Cinv);
		matrix_mult(transform, Cinv, transform);

		traverse(ptr->child, skelNum, transform, c);

		traverse(ptr->sibling, skelNum, transformBackUp, c);


	}

}

void Computation::computePos(Bone * ptr, double transform[4][4]) {

	double lpos[4], temp[4];

	temp[0] = ptr->cm[0];
	temp[1] = ptr->cm[1];
	temp[2] = ptr->cm[2];
	temp[3] = 1;

	matrix_v4_mult(transform, temp, lpos);

	ptr->r_i[0] = lpos[0];
	ptr->r_i[1] = lpos[1];
	ptr->r_i[2] = lpos[2];


}
