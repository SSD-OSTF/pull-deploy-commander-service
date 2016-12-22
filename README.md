# pull-deploy-commander-service
The Systemd service files and the script to pull and deploy updated projects from github


The main Part is the commander.pl script. This is run as a root priviledged script to handle 
restricted tasks which need to be done when redeploying a project.

The script shall only be capable to do exactly these tasks.


So you you will to define the commands which are going to be written onto the 
FIFO in /run/commander.sk
as well as the the handling of these commands in the commander.pl script.



For information about the setup please look at install.pl as the content of this file 
displays it quite well.



The function flow is as follows:

1. Some other application for (example the github-webhook-handler) decides that we must 
redeploy a certain project. And write the according command onto the FIFO file(socket?) at 
/run/commander.sk

2. Writing onto this file will trigger the commander.service to be activated. Which runs 
the commander.pl script reading out the command just written to the socket.

3. Now the commander.pl script will decide which command has been sent and will take the 
according action as it has been defined.

