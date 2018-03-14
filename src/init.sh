#!/bin/bash
export GUACAMOLE_HOME=/tomcat/.guacamole/
/usr/local/sbin/guacd start
/tomcat/bin/catalina.sh run
