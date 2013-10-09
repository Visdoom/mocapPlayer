#! /usr/local/bin/python
from Tkinter import Tk
from tkFileDialog import askopenfilename

import math
import ntpath

Tk().withdraw()

gcm_x = []
gcm_y = []
gcm_z = []
H_x = []
H_y = []
H_z = []
word_list = []
letter_list = []
float_list = []
filename = askopenfilename()
file = open(filename) #opens file defined by user

for line in file:
	word_list = line.split()
	if len(word_list) > 0:
		if word_list[0] == "gcm:":
			for word in word_list[1:]:
				a = float(word)
				float_list.append(a)
			gcm_x.append(float_list[0])
            		gcm_y.append(float_list[1])
            		gcm_z.append(float_list[2])
            		float_list = []
		if word_list[0] == "H:":
			for word in word_list[1:]:
				a = float(word)
				float_list.append(a)
			H_x.append(float_list[0])
            		H_y.append(float_list[1])
            		H_z.append(float_list[2])
			float_list = []
file.close()

#---------plot gcm -------------------
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig1 = plt.figure('gcm')
ax1 = fig1.gca(projection='3d')
ax1.set_xlabel('X')
ax1.set_ylabel('Y')
ax1.set_zlabel('Z')

ax1.scatter(gcm_x[0],gcm_y[0], gcm_z[0], color='red') #beginning
ax1.scatter(gcm_x[len(gcm_x) -1], gcm_y[len(gcm_y) -1],gcm_z[len(gcm_z)-1])#end
ax1.plot(gcm_x,gcm_y,gcm_z,label = 'gcm')
ax1.legend()
picturename = ntpath.splitext(ntpath.basename(filename))[0] + '_gcm_plot.eps'
plt.savefig(picturename, dpi=900)

#--------- scatter H ---------------------
fig2 = plt.figure('H')
ax2 = fig2.gca(projection='3d')
ax2.set_xlabel('X')
ax2.set_ylabel('Y')
ax2.set_zlabel('Z')

ax2.scatter(H_x,H_y,H_z, label ='H')
ax2.legend()
picturename = ntpath.splitext(ntpath.basename(filename))[0] + '_H_scatter.eps'
plt.savefig(picturename, dpi=900)

#----- plot |H| -----------------

fig3 = plt.figure('|H|', figsize=(23,4))
ax3 = fig3.add_subplot(111)
ax3.set_xlabel('frames')
ax3.set_ylabel('|H|')


frames = range(0,len(H_x))
mag = []
for i in range(0,(len(H_x))):
    a = math.sqrt(H_x[i]*H_x[i]+H_y[i]*H_y[i]+H_z[i]*H_z[i]) #calculates the magnitude of H
    mag.append(a)

plt.xticks(range(0,len(mag),10))

ax3.plot(frames, mag, label ='|H|')
ax3.set_xlim([0,len(frames)])
ax3.legend()
picturename = ntpath.splitext(ntpath.basename(filename))[0] + '_|H|_plot.eps'
#plt.savefig(picturename, dpi=900)

#-------- plot density --------------	
import numpy as np
from scipy.stats import gaussian_kde

fig4 = plt.figure('density')
ax4 = fig4.add_subplot(111)
ax4.set_xlabel('|H|')
ax4.set_ylabel('density')

#-------plot normalized |H| density --------------------#
normalized_mag = [i/max(mag) for i in mag]
density = gaussian_kde(normalized_mag)
xs = np.linspace(-1,1,200)

density.covariance_factor = lambda: .25
density._compute_covariance()

ax4.hist(normalized_mag, bins=8, normed=True)
ax4.plot(xs, density(xs))
picturename = ntpath.splitext(ntpath.basename(filename))[0] + '_|H|_normailzed_density.eps'
plt.savefig(picturename, dpi=900)

ax4.clear()

#-------- histogram of |H| ------------------
ax4.hist(mag, bins=8)
ax4.set_xlabel('|H|')
picturename = ntpath.splitext(ntpath.basename(filename))[0] + '_|H|_histogramm.eps'
plt.savefig(picturename, dpi=900)




#---------------------------------------------------------------
#-----subplotting of H_x, H_y, H_z and |H|-----------------------------------------------

fig1, axarr = plt.subplots(4,sharex=True, sharey=True)

axarr[0].plot(frames,H_x, label = 'H_x')
axarr[1].plot(frames,H_y, label = 'H_y')
axarr[2].plot(frames,H_z, label = 'H_z')
axarr[3].plot(frames, mag, label = '|H|')

axarr[0].legend()
axarr[1].legend()
axarr[2].legend()
axarr[3].legend()

axarr[0].set_xlim([0,len(frames)])
axarr[1].set_xlim([0,len(frames)])
axarr[2].set_xlim([0,len(frames)])
axarr[3].set_xlim([0,len(frames)])

axarr[3].set_xlabel('frames')

plt.xticks(range(0,len(mag),20))

picturename = ntpath.splitext(ntpath.basename(filename))[0] + '_H_combo.eps'
plt.savefig(picturename, dpi=900)
#plt.show()
