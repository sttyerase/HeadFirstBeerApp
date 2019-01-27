## THIS SCRIPT was create to deploy the Maven build artifact (jar file) to the Tomcat
## container provided in the Eclipse Che Maven-Tomcat-Java stack.  The directory locations
## may be modified for other deployment locations.
## The default locations in the script may be overridden by environment variables.

export PROJECT_HOME=${PROJECT_HOME:-"/projects/HeadFirstBeerApp"}
export TOMCAT_HOME=${TOMCAT_HOME:-"/home/user/tomcat8"}
export DEPLOY_DIR=$TOMCAT_HOME/webapps
echo   "DIRS: $PROJECT_HOME .... $TOMCAT_HOME"
$TOMCAT_HOME/bin/shutdown.sh
sleep 10 ## MAKE SURE TOMCAT HAS TIME TO STOP
cp $PROJECT_HOME/target/*.war  $DEPLOY_DIR
ls -l $DEPLOY_DIR
$TOMCAT_HOME/bin/startup.sh
### SILLY CHANGE
#### ANOTHER SILLY CHANGE