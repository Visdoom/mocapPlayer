/*

Player for ASF/AMC motion capture data

You can find many motion clips at:
http://mocap.cs.cmu.edu/
(CMU Graphics Lab Motion Capture Database)

Revision 1 - Steve Lin (CMU), Jan 14, 2002
Revision 2 - Alla Safonova and Kiran Bhat (CMU), Jan 18, 2002
Revision 3 - Jernej Barbic and Yili Zhao (USC), Feb, 2012

-----
Build instructions by Yili Zhao and Jernej Barbic, USC, 2012

*/

====================================================================================
How to build fltk in Windows, Linux, MAC OS X
====================================================================================

Please follow the corresponding readme files in the folder: fltk-1.3.0
Note: On Linux, you may need to install the "autoconf" tool.

====================================================================================
How to build mocap player in Linux, MAC OS X
====================================================================================

1) First, build fltk
2) Enter the %homeworkFolder%/mocapPlayer
3) make

====================================================================================
How to build mocap player using Visual Studio 2010 (Assuming fltk has been compiled)
====================================================================================

1) First, build fltk
2) Open the project file in homework folder: IDE-starter/VS2010/mocapPlayer.sln
3) Choose Debug/Release mode
4) Compile project: mocapPlayer

====================================================================================
How to compile mocap player in other version of Visual Studio
====================================================================================

1) First, build fltk
2) Launch Visual Studio.
3) Select: File->New->Project->Win32 Console Application
4) Change "Location" to the mocap player folder (the one that contains 3 sub-folders: fltk-1.3.0, IDE, mocapPlayer). Pick up a name for your mocap player project (e.g. "mocapPlayer"). Click OK.
5) In next window, click "Application Settings",choose: Console application, DESELECT "Precompiled Header", and select "Empty project"
6) You can see a new project (e.g. mocapPlayer) under the "Solution". Change the project name if you want. Add the following files to the project:
displaySkeleton.h/.cpp
interface.h/.cpp
mocapPlayer.h/.cpp
motion.h/.cpp
performanceCounter.h/.cpp
pic.h/.cpp
posture.h/.cpp
skeleton.h/.cpp
transform.h/.cpp
vector.h/.cpp
types.h
7) In VS panel, select menu: Tools->Options
   Setup the "Include Directories", So VS could find fltk-1.3.0
   Setup the "Library Directories", So VS could find fltk-1.3.0\lib

