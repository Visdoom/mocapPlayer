#! /usr/local/bin/python
from Tkinter import Tk
from tkFileDialog import askopenfilename

import math
import ntpath

#Tk().withdraw()


word_list = []
letter_list = []
float_list = []
filepath = []
filename = []

cutoff = 200

numOfFiles = range(1)
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


filt_H_x = [[] for i in numOfFiles]
filt_H_y = [[] for i in numOfFiles]
filt_H_z = [[] for i in numOfFiles]

for i in numOfFiles:
	filepath.append(askopenfilename())

for i in numOfFiles:
	file = open(filepath[i])
	for line in file:
		word_list = line.split()
		if len(word_list) > 0:
			if word_list[0] == "gcm:":
				for word in word_list[1:]:
					a = float(word)
					float_list.append(a)
				gcm_x[i].append(float_list[0])
        	    		gcm_y[i].append(float_list[1])
        	    		gcm_z[i].append(float_list[2])
        	    		float_list = []
			if word_list[0] == "H:":
				for word in word_list[1:]:
					a = float(word)
					float_list.append(a)
				H_x[i].append(float_list[0])
        	    		H_y[i].append(float_list[1])
        	    		H_z[i].append(float_list[2])
				float_list = []
			if word_list[0] == "L:":
				for word in word_list[1:]:
					a = float(word)
					float_list.append(a)
				L_x[i].append(float_list[0])
				L_y[i].append(float_list[1])
				L_z[i].append(float_list[2])
					
	file.close()

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


#---------plot gcm -------------------
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig1 = plt.figure('gcm overlay')
ax1 = fig1.gca(projection='3d')
ax1.set_xlabel('Z')
ax1.set_ylabel('X')
ax1.set_zlabel('Y')

for i in numOfFiles:
	ax1.scatter(gcm_z[i][0],gcm_x[i][0], gcm_y[i][0], color='red') #beginning
	ax1.scatter(gcm_z[i][len(gcm_z[i]) -1], gcm_x[i][len(gcm_x[i]) -1],gcm_y[i][len(gcm_y[i])-1])#end
    	labelname = 'gcm ' + filename[i]
	ax1.plot(gcm_z[i],gcm_x[i],gcm_y[i],label = labelname)
	ax1.legend(prop = {'size' : 'xx-small'})
picturename = 'gcm_overlay_plot.eps'
plt.savefig(picturename, dpi=900)

#----- plot filtered |H| -----------------

fig3 = plt.figure('|H| overlay', figsize=(23,4))
ax3 = fig3.add_subplot(111)
ax3.set_xlabel('frames')
ax3.set_ylabel('|H|')


frames = range(0,len(H_x[0]))
mag = [[] for i in numOfFiles]

for j in numOfFiles:
	for i in range(0,(len(filt_H_x[j]))):
    		a = math.sqrt(filt_H_x[j][i]*filt_H_x[j][i]+filt_H_y[j][i]*filt_H_y[j][i]+filt_H_z[j][i]*filt_H_z[j][i]) #calculates the magnitude of H
    		mag[j].append(a)


plt.xticks(range(0,len(mag[0]),10))

for i in numOfFiles:
	labelname = '|H| ' + filename[i]
	ax3.plot(frames, mag[i], label = labelname)
	ax3.legend(prop = {'size' : 'xx-small'})

ax3.set_xlim([0,len(frames)])

picturename = 'filt_|H|_overlay_plot.eps'
#plt.savefig(picturename, dpi=900)



#-------- plot density --------------	

import numpy as np
from scipy.stats import gaussian_kde

fig4 = plt.figure('density overlay')
ax4 = fig4.add_subplot(111)
ax4.set_xlabel('|H|')
ax4.set_ylabel('density')

#-------plot filtered and normalized |H| density --------------------#

for j in numOfFiles:
	normalized_mag = [i/max(mag[j]) for i in mag[j]]
	density = gaussian_kde(normalized_mag)
	xs = np.linspace(-1,1,200)
	density.covariance_factor = lambda: .25
	density._compute_covariance()

	ax4.hist(normalized_mag, bins=8, normed=True)
 	labelname = 'normalized |H| ' + filename[j]
	ax4.plot(xs, density(xs), label = labelname)
	ax4.legend(prop ={'size' : 'xx-small'})


picturename ='filt_|H|_normalized_density_overlay.eps'
plt.savefig(picturename, dpi=900)


#ax4.clear()

#-------- histogram of |H| ------------------
#ax4.hist(mag, bins=8)
#ax4.set_xlabel('|H|')
#picturename = ntpath.splitext(ntpath.basename(filename))[0] + '_|H|_histogramm.eps'
#plt.savefig(picturename, dpi=900)




#---------------------------------------------------------------
#-----subplotting of H_x, H_y, H_z and |H| and L -----------------------------------------------

fig1, axarr = plt.subplots(4,sharex=True, sharey=True)

for j in numOfFiles:
	labelname1 = 'H_x ' + filename[j]
	labelname2 = 'L_x ' + filename[j]
	labelname3 = 'H_y ' + filename[j]
	labelname4 = 'L_y ' + filename[j]
	labelname5 = 'H_z ' + filename[j]
	labelname6 = 'L_z ' + filename[j]
	labelname7 = '|H| ' + filename[j]
		
	axarr[0].plot(frames,filt_H_x[j], label = labelname1)
	axarr[0].plot(frames, L_x[j], label = labelname2)
		
	axarr[1].plot(frames,filt_H_y[j], label = labelname3)
	axarr[1].plot(frames, L_y[j], label = labelname4)	
		
	axarr[2].plot(frames,filt_H_z[j], label = labelname5)
	axarr[2].plot(frames, L_z[j], label = labelname6)	

	axarr[3].plot(frames, mag[j], label = labelname7)


	axarr[0].legend( loc = 'best', prop = {'size' : 'xx-small'})
	axarr[1].legend(loc = 'best', prop = {'size' : 'xx-small'})
	axarr[2].legend( loc = 'best', prop = {'size' : 'xx-small'})
	axarr[3].legend( loc = 'best', prop = {'size' : 'xx-small'})	
		
	
	axarr[0].set_xlim([0,len(frames)])
	axarr[1].set_xlim([0,len(frames)])
	axarr[2].set_xlim([0,len(frames)])
	axarr[3].set_xlim([0,len(frames)])
	

axarr[3].set_xlabel('frames')

#plt.xticks(range(0,len(mag[0]),20))

picturename = 'filtered_H_combo.eps'
plt.savefig(picturename, dpi=900)
plt.show()
