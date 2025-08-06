#!/bin/bash

LOG_DIR="/d/AWS-DevOps/Bash-Scripting/logs"
REPORT_FILE="/d/AWS-DevOps/Bash-Scripting/logs/log_analysis_report.txt"
ERROR_PATTERNS=("WARNING" "INFO" "FATAL" "CRITICAL")


echo "Analyzing log files" > "$REPORT_FILE"
echo "===================" >> "$REPORT_FILE"

echo -e "\nList of log files found:" >> "$REPORT_FILE"
LOG_FILES=$(find "$LOG_DIR" -type f -name "*.log")
echo "$LOG_FILES" >> "$REPORT_FILE"

for LOG_FILE in $LOG_FILES; do
    echo -e "\n📝 Processing file: $LOG_FILE" >> "$REPORT_FILE"

    for pattern in "${ERROR_PATTERNS[@]}"; do
        echo -e "\n🔍 Searching for $pattern" >> "$REPORT_FILE"
        grep "$pattern" "$LOG_FILE" >> "$REPORT_FILE"
        echo "Count: $(grep -c "$pattern" "$LOG_FILE")" >> "$REPORT_FILE"
    done
done

echo "Log analysis complete. Report saved to $REPORT_FILE"