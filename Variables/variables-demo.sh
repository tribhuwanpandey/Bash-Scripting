#!/bin/bash

# Use logs from a central folder
LOG_DIR="D:\AWS-DevOps\Bash-Scripting\logs"
APP_LOG_FILE="Application.log"
SYS_LOG_FILE="System.log"

echo " analysing log files "
echo "======================"

echo -e "\nList of log files updated in last 24H"
find $LOG_DIR -name "*.log" -mtime -1

echo -e "\nsearching WARNING logs in application.log file"
grep "WARNING" "$LOG_DIR/$APP_LOG_FILE"
 
echo -e "\nNumber of WARNING logs found in application.log"
grep -c "WARNING" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\nNumber of INFO logs found in application.log"
grep -c "INFO" "$LOG_DIR/$APP_LOG_FILE"

echo -e"\nsearching FATAL logs in system.log file"
grep "FATAL" "$LOG_DIR/$SYS_LOG_FILE" 

echo -e"\nNumber of FATAL logs in system.log file" 
grep -c "FATAL" "$LOG_DIR/$SYS_LOG_FILE"

echo -e"\nNumber of CRITICAL logs in system.log file"
grep -c "CRITICAL" "$LOG_DIR/$SYS_LOG_FILE"


