#!/bin/bash -x
cd /opt/dasher

if [ `ps ax | grep app.js | grep -v grep | wc -l` -eq 0 ]; 
then
	nohup npm run start &
fi

if [ `ps ax | grep physics_watch.sh | grep -v grep | wc -l ` -eq 0 ]
then
       nohup /opt/dasher/bin/physics_watch.sh &
fi 
