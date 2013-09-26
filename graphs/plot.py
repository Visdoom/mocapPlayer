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

#plot points stored in gcm and H
import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fig1 = plt.figure('gcm')
ax1 = fig1.gca(projection='3d')
ax1.set_xlabel('X')
ax1.set_ylabel('Y')
ax1.set_zlabel('Z')

ax1.plot(gcm_x,gcm_y,gcm_z,label = 'gcm')
ax1.legend()
picturename = ntpath.splitext(ntpath.basename(filename))[0] + '_gcm_plot.png'
plt.savefig(picturename)

fig2 = plt.figure('H')
ax2 = fig2.gca(projection='3d')
ax2.set_xlabel('X')
ax2.set_ylabel('Y')
ax2.set_zlabel('Z')

ax2.scatter(H_x,H_y,H_z, label ='H')
ax2.legend()
picturename = ntpath.splitext(ntpath.basename(filename))[0] + '_H_scatter.png'
plt.savefig(picturename)

fig3 = plt.figure('|H|')
ax3 = fig3.add_subplot(111)
ax3.set_xlabel('frames')
ax3.set_ylabel('|H|')

#plot magnitude of H with frames
frames = range(1,len(H_x))
mag = []
for i in range(0,(len(H_x)-1)):
    a = math.sqrt(H_x[i]*H_x[i]+H_y[i]*H_y[i]+H_z[i]*H_z[i]) #calculates the magnitude of H
    mag.append(a)

plt.xticks([0,10000])
ax3.plot(frames, mag, label ='|H|')
ax3.legend()
picturename = ntpath.splitext(ntpath.basename(filename))[0] + '_|H|_plot.png'
plt.savefig(picturename)
	









#---------------------------------------------------------------
#-----subplotting-----------------------------------------------

#fig1, axarr = plt.subplots(2,sharex=True)
#axarr[0].plot(frames, mag)
#plt.show()
