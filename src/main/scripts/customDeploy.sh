export PROJECT_HOME=${PROJECT_HOME:-"/projects/HeadFirstBeerApp"}
export TOMCAT_HOME=${TOMCAT_HOME:-"/home/user/tomcat8"}
export DEPLOY_DIR=$TOMCAT_HOME/webapps
echo   "DIRS: $PROJECT_HOME .... $TOMCAT_HOME"
$TOMCAT_HOME/bin/shutdown.sh
sleep 10 ## MAKE SURE TOMCAT HAS TIME TO STOP
cp $PROJECT_HOME/target/*.war  $DEPLOY_DIR
ls -l $DEPLOY_DIR
$TOMCAT_HOME/bin/startup.sh
