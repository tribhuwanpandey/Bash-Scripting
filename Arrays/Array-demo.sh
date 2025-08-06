#!/bin/bash

# Use logs from a central folder
LOG_DIR="D:\AWS-DevOps\Bash-Scripting\logs"
APP_LOG_FILE="Application.log"
SYS_LOG_FILE="System.log"

ERROR_PATTERNS=("WARNING" "INFO" "FATAL" "CRITICAL")

echo " analysing log files "
echo "==================="

echo -e "\nList of log files updated in last 24H"
LOG_FILES=$(find $LOG_DIR -name "*.log" -mtime -1)
echo $LOG_FILES

echo -e "\nsearching WARNING logs in application.log file"
grep "${ERROR_PATTERNS[0]}" "$LOG_DIR/$APP_LOG_FILE"
 
echo -e "\nNumber of WARNING logs found in application.log"
grep -c "${ERROR_PATTERNS[0]}" "$LOG_DIR/$APP_LOG_FILE"

echo -e "\nNumber of INFO logs found in application.log"
grep -c "${ERROR_PATTERNS[1]}" "$LOG_DIR/$APP_LOG_FILE"

echo -e"\nsearching FATAL logs in system.log file"
grep -c "${ERROR_PATTERNS[2]}TAL" "$LOG_DIR/$SYS_LOG_FILE" 

echo -e"\nNumber of FATAL logs in system.log file" 
grep -c "${ERROR_PATTERNS[2]}" "$LOG_DIR/$SYS_LOG_FILE"

echo -e"\nNumber of CRITICAL logs in system.log file"
grep -c "CR${ERROR_PATTERNS[3]}ITICAL" "$LOG_DIR/$SYS_LOG_FILE"
