#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "$0" )" && pwd )"
echo $SCRIPT_DIR
cd $SCRIPT_DIR/..
mvn test-compile
nohup mvn exec:java -Dexec.classpathScope="test" -Dexec.mainClass="com.se.connector.AcquirerSimulator" 2>&1 </dev/null & 
nohup mvn exec:java -Dexec.classpathScope="test" -Dexec.mainClass="com.se.connector.IssuerSimulator" 2>&1 </dev/null & 
