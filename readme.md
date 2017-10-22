MartianRobots
====

Built in Swift 3

To run unit-tests, open in xcode, and hit cmd+U  
Different inputs can be tested from RobotCommandCenterTests file  

To run as a command line app:  
Xcode menu > Product > Click Archive  
In the launched window, select the archive and then export to save build product  
cd /my/build/directory  
cat ~/input.txt | ./MartianRobots   

Sample input data:(MartianRobotsTests/input.txt)  

```
5 3 
1 1 E
RFRFRFRF

3 2 N
FRRFLLFFRRFLL

0 3 W
LLFFFLFLFL
```

Expected output: 

```
1 1 E 
3 3 N LOST
2 3 S
```
