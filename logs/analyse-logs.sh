find . -name "*.log" -mtime -1

###| Part            | Meaning                                                                                         |
###| --------------- | ----------------------------------------------------------------------------------------------- |
#| `find`          | Command used to search for **files and directories**                                            |
#| `.`             | Start the search **from the current directory**                                                 |
#| `-name "*.log"` | Filter to find files with names **ending in `.log`**                                            |
#| `*`             | Wildcard meaning **"any characters"** (used here in `*.log` to match any file ending in `.log`) |
#| `-mtime`        | Stands for **modification time**, in **days**                                                   |
#| `-1`            | Means **modified less than 1 day ago** (i.e., within the last 24 hours)                         |



grep "WARNING" application.log

# "grep" Searches for a pattern (word, string, regex) in a file or output.


grep -c "WARNING" application.log

# "grep -c" Counts the number of lines that match the pattern — it doesn’t show the lines themselves.



grep -c "INFO" application.log
grep -c "TRACE" application.log


grep "FATAL" system.log
grep -c "FATAL" system.log
grep -c "CRITICAL" system.log


