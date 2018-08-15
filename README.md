# Localization Project
The project presented in this repository focused on creating a robot model with the unified robot description format
(URDF). The robot model has a base, two wheels as actuators, a laser sensor and a camera. Said robot is placed in a Gazebo
simulation environment with a training map and is asked to go to a goal. 

### Dependencies:

#### Packages:

If you are working with a native ROS installation, some of the following package installation instructions might be required, if they aren't installed already -

```bash
$ sudo apt-get install ros-kinetic-navigation
$ sudo apt-get install ros-kinetic-map-server
$ sudo apt-get install ros-kinetic-move-base
$ rospack profile
$ sudo apt-get install ros-kinetic-amcl
```

#### Software:
Gazebo and rviz software are used in this project, if these programs have not yet installed them, here are some important links:

Gazebo:
* [Installing gazebo_ros_pkgs](http://gazebosim.org/tutorials?tut=ros_installing)
* [Install Gazebo using Ubuntu packages
Default installation: one-liner](http://gazebosim.org/tutorials?tut=install_ubuntu)

Rviz:
* [Rviz - UserGuide](http://wiki.ros.org/rviz/UserGuide)

#### Building the project

Run the following commands from terminal to build the project from source:

```bash
$ sudo apt-get install xterm
$ sudo apt-get update
 ...  [ Wait ] ...
$ git clone https://github.com/Miguelucho/LocalizationProject.git
$ cd LocalizationProject/catkin_ws/src
$ catkin_init_workspace
$ cd ..
$ catkin_make
 ...  [ Wait ] ...
$ source devel/setup.bash
$ cd src/
$ ./localization.sh

Note: If the localization.sh file does not start, you probably 
need to give the file the necessary permissions. The solution is:

$ chmod +x localization.sh
$ ./localization.sh # Now it should be possible to launch the file
```
After launching the *localization.sh* file will open the gazebo and rviz windows as shown in the image.

![LocalitationBot](https://github.com/Miguelucho/LocalizationProject/blob/master/Captura%20de%20pantalla%20de%202018-08-15%2017-59-05.png)

To test the location of the bot on the map, locate it in the window rviz, at the top there is a button named **2D Nav Goal**, select it and then with the mouse press the primary button on the map of rviz and keeping the button Preceding and moving the mouse is given a orientation to a large green arrow that is shown on the map of Rviz. When releasing the primary mouse button the bot will proceed to the indicated location.

Nota: When the *localization.sh* file is launched, the rviz window opens as seen in the image but the gazebo window opens with its maximum value. To place the window as seen in the photo, select the gazebo window and press the keys: `Ctrl + ⊞ (Win) + ← (Arrow Left)`





