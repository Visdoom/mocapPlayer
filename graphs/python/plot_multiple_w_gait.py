#! /usr/local/bin/python
from Tkinter import Tk
from tkFileDialog import askopenfilename

import math
import ntpath
import functions as f

#Tk().withdraw()


word_list = []
letter_list = []
float_list = []
filepath = []
filename = []

cutoff = 200

numOfFiles = range(2)
#file = open(filename) #opens file defined by user

gcm_x = [[] for i in numOfFiles]
gcm_y = [[] for i in numOfFiles]
gcm_z = [[] for i in numOfFiles]
H_x = [[] for i in numOfFiles]
H_y = [[] for i in numOfFiles]
H_z = [[] for i in numOfFiles]
L_x = [[] for i in numOfFiles]
L_y = [[] for i in numOfFiles]
L_z = [[] for i in numOfFiles]

phases = [[] for i in numOfFiles]
filt_phases = [[] for i in numOfFiles]
breaks = []

filt_H_x = [[] for i in numOfFiles]
filt_H_y = [[] for i in numOfFiles]
filt_H_z = [[] for i in numOfFiles]

for i in numOfFiles:
	filepath.append(askopenfilename())

for i in numOfFiles:
	f.parse_in_gcm(filepath[i],gcm_x[i],gcm_y[i],gcm_z[i])
	f.parse_in_H(filepath[i], H_x[i],H_y[i], H_z[i])
	f.parse_in_L(filepath[i],L_x[i],L_y[i],L_z[i])
	f.parse_in_phases(filepath[i],phases[i])


#--------- store filenames --------------

for i in numOfFiles:
	name = ntpath.splitext(ntpath.basename(filepath[i]))[0]
	k = name.rfind("_")
	filename.append(name[(k+1):])
	
#-------- low pass filter H ------------------

from scipy import signal

for i in numOfFiles:
	b, a = signal.butter(3, 0.3)
	filt_H_x[i] = signal.filtfilt(b,a,H_x[i])	
	filt_H_y[i] = signal.filtfilt(b,a, H_y[i])
	filt_H_z[i] = signal.filtfilt(b,a, H_z[i])	

#----------- filter phases--------------------

f.filter_phases(numOfFiles,phases,filt_phases)

#------ give frame positions of leg swing changes ----

f.breaks(numOfFiles,filt_phases,breaks)

#---------plot gcm -------------------
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

f.plot_gcm(filename,numOfFiles,gcm_x,gcm_y,gcm_z)

#----- plot filtered |H| -----------------

frames = [[] for i in numOfFiles]
mag = [[] for i in numOfFiles]

for j in numOfFiles:
	for i in range(0,(len(filt_H_x[j]))):
    		a = math.sqrt(filt_H_x[j][i]*filt_H_x[j][i]+filt_H_y[j][i]*filt_H_y[j][i]+filt_H_z[j][i]*filt_H_z[j][i]) #calculates the 			magnitude of H
    		mag[j].append(a)
		frames[j].append(i)


#plt.xticks(range(0,len(mag[0]),10))

f.plot_magH(filename, numOfFiles, frames, mag)



#-------- plot density --------------	

#-------plot filtered and normalized |H| density --------------------#

f.plot_norm_dens(filename, numOfFiles, mag)

#ax4.clear()

#-------- histogram of |H| ------------------
#ax4.hist(mag, bins=8)
#ax4.set_xlabel('|H|')
#picturename = ntpath.splitext(ntpath.basename(filename))[0] + '_|H|_histogramm.eps'
#plt.savefig(picturename, dpi=900)




#---------------------------------------------------------------
#-----subplotting of H_x, H_y, H_z and |H| and L -----------------------------------------------

f.plot_gait_H_L(filename, numOfFiles,filt_H_x,filt_H_y,filt_H_z,mag,L_x,L_y,L_z,breaks)
plt.show()
