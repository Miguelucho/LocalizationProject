#!/bin/sh

xterm -e " roslaunch udacity_bot udacity_world.launch " & 
sleep 5
xterm -e " roslaunch udacity_bot amcl.launch" &
sleep 5
xterm -e " rosrun udacity_bot navigation_goal "
