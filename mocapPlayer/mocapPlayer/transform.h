/*
transform.h

Revision 1 - Steve Lin (CMU), Jan 14, 2002
Revision 2 - Alla Safonova and Kiran Bhat (CMU), Jan 18, 2002
Revision 3 - Jernej Barbic and Yili Zhao (USC), Feb, 2012

*/

#ifndef _TRANSFORM_H
#define _TRANSFORM_H

class Matrix
{

};

void matrix4_transpose(double a[4][4], double b[4][4]);
void matrix3_transpose(double a[3][3], double b[3][3]);
void matrix4_print(char *str, double a[4][4]);
void matrix_transform_affine(double m[4][4], double x, double y, double z, double pt[3]);
void matrix4_mult(double a[][4], double b[][4], double c[][4]);
void matrix3_mult(double a[][3], double b[][3], double c[][3]);
void matrix4_v4_mult(double a[][4], double v[4], double r[4]);
void matrix3_v3_mult(double a[3][3], double v[3], double r[3]);
void matrix4_scalar_mult(double a[4][4], double scalar);
void matrix3_scalar_mult(double a[3][3], double scalar);
void matrix4_copy(double a[][4], double b[][4]);
void matrix3_copy(double a[][4], double b[][3]);
void cross_matrix(double a[3], double r[3][3]);
void v3_cross(double a[3], double b[3], double c[3]);
double v3_mag(double a[3]);
double v3_dot(double a[3], double b[3]);

//Rotate vector v around axis X by angle a, around axis Y by angle b and around axis Z by angle c
void vector_rotationXYZ(double *v, double a, double b, double c);

//Create Rotation matrix, that rotates around axis X by angle a
void rotationX(double r[][4], double a);
//Create Rotation matrix, that rotates around axis Y by angle a
void rotationY(double r[][4], double a);
//Create Rotation matrix, that rotates around axis Z by angle a
void rotationZ(double r[][4], double a);
//Create general rotation matrix, that rotates about axis U = (x,y,z) by angle a
void rotation(double r[][4], double a, double x, double y, double z);
//Creates Identity matrix
void identity(double i[][4]);
//negates every entry in a
void negate(double a[][4], double b[][4]);


//Return the angle between vectors v1 and v2 around the given axis 
double GetAngle(double* v1, double* v2, double* axis);

#endif
