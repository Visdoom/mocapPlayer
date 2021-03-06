/*

Revision 1 - Steve Lin (CMU), Jan 14, 2002
Revision 2 - Alla Safonova and Kiran Bhat (CMU), Jan 18, 2002
Revision 3 - Jernej Barbic and Yili Zhao (USC), Feb, 2012

*/
#include <cmath>
#include <cstdio>
#include <cstring>
#include "transform.h"
#include "types.h"


/* Compute transpose of a matrix
Input: matrix  a
Output: matrix b = Transpose(a)
*/
void matrix4_transpose(double a[4][4], double b[4][4]) 
{
  int i, j;

  for (i=0; i<4; i++)
    for (j=0; j<4; j++)
      b[i][j] = a[j][i];
}

/* Compute transpose of a matrix
Input: matrix  a
Output: matrix b = Transpose(a)
*/
void matrix3_transpose(double a[3][3], double b[3][3]) {

	int i, j;

	  for (i=0; i<3; i++)
	    for (j=0; j<3; j++)
	      b[i][j] = a[j][i];
}
/*
 * Copies matrix a to matrix b
 * Input: matrix a
 * Output: matrix b = a
 * */
void matrix4_copy(double a[][4], double b[][4])
{
	for(int i = 0; i < 4; i++)
	{
		for(int j = 0; j < 4; j++)
		{
			b[i][j] = a[i][j];
		}
	}

}

/*
 * Copies matrix a to matrix b
 * Input: matrix a
 * Output: matrix b = a
 * */
void matrix3_copy(double a[][4],  double b[][3]) {

	for (int i = 0; i < 3; i++)
	{
		for (int j = 0; j < 3; j++)
		{
			b[i][j] = a[i][j];
		}
	}
}

/* Print the matrix
Input:	
*/
void matrix4_print(char *str, double a[4][4]) 
{
  int i;

  printf("matrix %s:\n", str);
  for (i=0; i<4; i++)
    printf(" %8.3f %8.3f %8.3f %8.3f\n",
    a[i][0], a[i][1], a[i][2], a[i][3]);
}


/* Transform the point (x,y,z) by the matrix m, which is
assumed to be affine (last row 0 0 0 1) 
this is just a matrix-vector multiply 
*/
void matrix_transform_affine(double m[4][4],
  double x, double y, 
  double z, double pt[3]) 
{
  pt[0] = m[0][0]*x + m[0][1]*y + m[0][2]*z + m[0][3];
  pt[1] = m[1][0]*x + m[1][1]*y + m[1][2]*z + m[1][3];
  pt[2] = m[2][0]*x + m[2][1]*y + m[2][2]*z + m[2][3];
}

void v3_cross(double a[3], double b[3], double c[3]) 
{
  /* cross product of two vectors: c = a x b */
  c[0] = a[1]*b[2]-a[2]*b[1];
  c[1] = a[2]*b[0]-a[0]*b[2];
  c[2] = a[0]*b[1]-a[1]*b[0];
}

double v3_dot(double a[3], double b[3])
{
  return(a[0]*b[0]+a[1]*b[1]+a[2]*b[2]);
}


double v3_mag(double a[3])
{
  return(sqrt(a[0]*a[0]+a[1]*a[1]+a[2]*a[2])); 
}

double absolute_value(double a) {
	if (a < 0) return (-a);
	else return a;
}
void rotationZ(double r[][4], double a)
{
  a=a*M_PI/180.;
  r[0][0]=cos(a); r[0][1]=-sin(a); r[0][2]=0; r[0][3]=0;
  r[1][0]=sin(a); r[1][1]=cos(a);  r[1][2]=0; r[1][3]=0;
  r[2][0]=0;      r[2][1]=0;       r[2][2]=1; r[2][3]=0;
  r[3][0]=0;      r[3][1]=0;       r[3][2]=0; r[3][3]=1;
}

void rotationY(double r[][4], double a)
{
  a=a*M_PI/180.;
  r[0][0]=cos(a);  r[0][1]=0;       r[0][2]=sin(a); r[0][3]=0;
  r[1][0]=0;       r[1][1]=1;       r[1][2]=0;      r[1][3]=0;
  r[2][0]=-sin(a); r[2][1]=0;       r[2][2]=cos(a); r[2][3]=0;
  r[3][0]=0;       r[3][1]=0;       r[3][2]=0;      r[3][3]=1;
}

void rotationX(double r[][4], double a)
{
  a=a*M_PI/180.;
  r[0][0]=1;       r[0][1]=0;       r[0][2]=0;       r[0][3]=0;
  r[1][0]=0;       r[1][1]=cos(a);  r[1][2]=-sin(a); r[1][3]=0;
  r[2][0]=0;       r[2][1]=sin(a);  r[2][2]=cos(a);  r[2][3]=0;
  r[3][0]=0;       r[3][1]=0;       r[3][2]=0;       r[3][3]=1;
}

void rotation(double r[][4], double a, double x, double y, double z)
{
	r[0][0] = (cos(a) + x*x*(1 - cos(a)));
	r[1][0] = (x*y*(1 - cos(a)) + z*sin(a));
	r[2][0] = (z*x*(1 - cos(a)) - y*sin(a));
	r[3][0] = 0;

	r[0][1] = (x*y*(1 - cos(a)) - z*sin(a));
	r[1][1] = (cos(a) + y*y*(1 - cos(a)));
	r[2][1] = (z*y*(1 - cos(a) + x*sin(a)));
	r[3][1] = 0;

	r[0][2] = (x*z*(1 - cos(a)) + y*sin(a));
	r[1][2] = (y*z*(1 - cos(a)) - x*sin(a));
	r[2][2] = (cos(a) + z*z*(1 - cos(a)));
	r[3][2] = 0;

	r[0][3] = 0;
	r[1][3] = 0;
	r[2][3] = 0;
	r[3][3] = 1;
}

void identity(double i[][4])
{
	i[0][0] = 1.0; i[0][1] = 0.0; i[0][2] = 0.0; i[0][3] = 0.0;
	i[1][0] = 0.0; i[1][1] = 1.0; i[1][2] = 0.0; i[1][3] = 0.0;
	i[2][0] = 0.0; i[2][1] = 0.0; i[2][2] = 1.0; i[2][3] = 0.0;
	i[3][0] = 0.0; i[3][1] = 0.0; i[3][2] = 0.0; i[3][3] = 1.0;
}

void identity3(double i[][3])
{
	i[0][0] = 1.0; i[0][1] = 0.0; i[0][2] = 0.0;
	i[1][0] = 0.0; i[1][1] = 1.0; i[1][2] = 0.0;
	i[2][0] = 0.0; i[2][1] = 0.0; i[2][2] = 1.0;

}

void matrix4_mult(double a[][4], double b[][4], double c[][4])
{
  int i, j, k;
  double tmp[4][4];

  for(i=0;i<4;i++)
    for(j=0;j<4;j++)
    {
    	tmp[i][j]=0;

    	for(k=0;k<4;k++)
    		tmp[i][j]+=a[i][k]*b[k][j];
    }

  for(i = 0; i < 4; i++)
  {
	  for(j = 0; j < 4; j++)
	  {
		  c[i][j] = tmp[i][j];
	  }
  }

}

void matrix3_mult(double a[][3], double b[][3], double c[][3])
{
  int i, j, k;
  double tmp[3][3];

  for(i=0;i<3;i++)
    for(j=0;j<3;j++)
    {
    	tmp[i][j]=0;

    	for(k=0;k<3;k++)
    		tmp[i][j]+=a[i][k]*b[k][j];
    }

  for(i = 0; i < 3; i++)
  {
	  for(j = 0; j < 3; j++)
	  {
		  c[i][j] = tmp[i][j];
	  }
  }

}

void matrix4_scalar_mult(double a[4][4], double scalar)
{
	for (int i = 0; i < 4; i ++)
		for (int j = 0; j < 4; j++)
			a[i][j] *= scalar;
}

void matrix3_scalar_mult(double a[3][3], double scalar)
{
	for (int i = 0; i < 3; i ++)
		for (int j = 0; j < 3; j++)
			a[i][j] *= scalar;
}


void matrix4_v4_mult(double a[][4], double v[4], double r[4])
{
	double tmp[4];
	for(int i = 0; i < 4; i++)
	{
		tmp[i] = 0;
		for(int j = 0; j < 4; j++)
		{
			tmp[i] += a[i][j]*v[j];
		}
	}

	for(int i = 0; i < 4; i++)
	{
		r[i] = tmp[i];
	}
}

void matrix3_v3_mult(double a[3][3], double v[3], double r[3])
{
	double tmp[3];

	for (int i = 0; i < 3; i++)
	{
		tmp[i] = 0;

		for(int j = 0; j < 3; j++)
		{
			tmp[i] += a[i][j]*v[j];
		}
	}

	for(int i = 0; i < 3; i++)
	{
		r[i] = tmp[i];
	}
}


/*
 * Negates all entries in a
 * Input: Matrix a
 * Output: Matrix b = -a
 * */
void negate(double a[][4], double b[][4])
{
	for(int i = 0; i < 4; i++)
	{
		for(int j = 0; j < 4; j++)
		{
			b[i][j] = (-1)*a[i][j];
		}
	}

}

/*
 * Represents the cross product as a matrix: r = (a x)*/
void cross_matrix(double a[3], double r[3][3])
{
	r[0][0] = r[1][1] = r[2][2] = 0.;
	r[0][1] = (-1.0)* a[2];
	r[0][2] = a[1];
	r[1][0] = a[2];
	r[1][2] = (-1.0)*a[0];
	r[2][0] = (-1.0)*a[1];
	r[2][1] = a[0];

}

/*
Rotate vector v by a, b, c in X,Y,Z order.
v_out = Rz(c)*Ry(b)*Rx(a)*v_in
*/
void vector_rotationXYZ(double *v, double a, double b, double c)
{
  double Rx[4][4], Ry[4][4], Rz[4][4];

  //Rz is a rotation matrix about Z axis by angle c, same for Ry and Rx
  rotationZ(Rz, c);
  rotationY(Ry, b);
  rotationX(Rx, a);

  //Matrix vector multiplication to generate the output vector v.
  matrix_transform_affine(Rz, v[0], v[1], v[2], v);
  matrix_transform_affine(Ry, v[0], v[1], v[2], v);
  matrix_transform_affine(Rx, v[0], v[1], v[2], v);
}


//get the angle from vector v1 to vector v2 around the axis
double GetAngle(double* v1, double* v2, double* axis)
{
  double dot_prod = v3_dot(v1, v2);
  double r_axis_len = v3_mag(axis);

  double theta = atan2(r_axis_len, dot_prod);


  return theta;
}

