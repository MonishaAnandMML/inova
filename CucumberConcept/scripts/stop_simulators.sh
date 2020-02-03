#!/bin/bash
process_id=`/bin/ps -fu $USER|grep "java" | grep "com.se.connector.IssuerSimulator" | awk '{print $2}'`
if [ ! -z "$process_id" ]
 then
 echo "Killing process $process_id"
 kill $process_id
fi
process_id=`/bin/ps -fu $USER|grep "java" | grep "com.se.connector.AcquirerSimulator" | awk '{print $2}'`
if [ ! -z "$process_id" ]
 then
 echo "Killing process $process_id"
 kill $process_id
fi
