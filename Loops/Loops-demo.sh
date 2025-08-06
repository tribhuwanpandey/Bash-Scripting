#!/bin/bash

# Use Bash-style path
LOG_DIR="/d/AWS-DevOps/Bash-Scripting/logs"

# Error patterns
ERROR_PATTERNS=("WARNING" "INFO" "FATAL" "CRITICAL")

# Use -type f to find files (remove -mtime to include all .log files)
LOG_FILES=$(find "$LOG_DIR" -type f -name "*.log")

echo "Analyzing log files in $LOG_DIR"
echo "==============================="

# Single loop only (1 do ... done)
for LOG_FILE in $LOG_FILES; do
    echo -e "\n📝 Processing file: $LOG_FILE"

    echo -e "\n🔍 Searching for ${ERROR_PATTERNS[0]}"
    grep "${ERROR_PATTERNS[0]}" "$LOG_FILE"
    echo "Count: $(grep -c "${ERROR_PATTERNS[0]}" "$LOG_FILE")"

    echo -e "\n🔍 Searching for ${ERROR_PATTERNS[1]}"
    grep "${ERROR_PATTERNS[1]}" "$LOG_FILE"
    echo "Count: $(grep -c "${ERROR_PATTERNS[1]}" "$LOG_FILE")"

    echo -e "\n🔍 Searching for ${ERROR_PATTERNS[2]}"
    grep "${ERROR_PATTERNS[2]}" "$LOG_FILE"
    echo "Count: $(grep -c "${ERROR_PATTERNS[2]}" "$LOG_FILE")"

    echo -e "\n🔍 Searching for ${ERROR_PATTERNS[3]}"
    grep "${ERROR_PATTERNS[3]}" "$LOG_FILE"
    echo "Count: $(grep -c "${ERROR_PATTERNS[3]}" "$LOG_FILE")"
done
