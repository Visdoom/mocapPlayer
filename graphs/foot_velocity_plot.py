#! /usr/local/bin/python

from Tkinter import Tk
from tkFileDialog import askopenfilename


import math
import ntpath

filename = askopenfilename()
file = open(filename)


left_foot = []
right_foot =[]

for line in file:
	word_list = line.split()
	if len(word_list) > 0:
		if word_list[0] == "v_i_lfoot:" :
			left_foot.append([float(word_list[1]), float (word_list[2]), float(word_list[3])])
		if word_list[0] == "v_i_rfoot:" :
			right_foot.append([float(word_list[1]),float(word_list[2]),float(word_list[3])])


file.close()


import matplotlib.pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

# ----------- plot components of left foot --------------------

fig1, axarr = plt.subplots(3, sharex = True, sharey = True)

frames = range(0,len(left_foot))
print len(left_foot)
axarr[0].plot(frames, [x[0] for x in left_foot], label = 'left_foot_x')
axarr[1].plot(frames, [x[1] for x in left_foot],label = 'left_foot_y')
axarr[2].plot(frames, [x[2] for x in left_foot], label = 'left_foot_z')

axarr[0].legend()
axarr[1].legend()
axarr[2].legend()

axarr[2].set_xlabel('frames')

# ------------ plot components of right foot ---------------------

fig2, axarr2 = plt.subplots(3, sharex = True, sharey = True)

axarr2[0].plot(frames, [x[0] for x in right_foot], label = 'right_foot_x')
axarr2[1].plot(frames, [x[1] for x in right_foot], label = 'right_foot_y')
axarr2[2].plot(frames, [x[2] for x in right_foot], label = 'right_foot_z')

axarr2[0].legend()
axarr2[1].legend()
axarr2[2].legend()

axarr2[2].set_xlabel('frames')

# ----------- plot left foot ----------------------------
fig3 = plt.figure('foot velocity')
ax3 = fig3.gca(projection='3d')
ax3.set_xlabel('X')
ax3.set_ylabel('Y')
ax3.set_zlabel('Z')

lf_x = [x[0] for x in left_foot]
lf_y = [x[1] for x in left_foot]
lf_z = [x[2] for x in left_foot]

ax3.plot(lf_x, lf_y, lf_z, label = 'left_foot')

plt.show()
