#!/bin/bash

# health-check.sh - Simple local machine health monitor

LOG_FILE="health-check.log"
DATE=$(date '+%Y-%m-%d %H:%M:%S')

echo "=== Health Check - $DATE ===" | tee -a $LOG_FILE

# Check disk space
echo "Checking disk space..." | tee -a $LOG_FILE
df -h / | tail -1 | tee -a $LOG_FILE

DISK_USAGE=$(df -h / | tail -1 | awk '{print $5}' | sed 's/%//')
if [ $DISK_USAGE -gt 80 ]; then
    echo "⚠️  WARNING: Disk usage above 80%!" | tee -a $LOG_FILE
else
    echo "✅ Disk usage OK" | tee -a $LOG_FILE
fi

# Check memory
echo "" | tee -a $LOG_FILE
echo "Checking memory..." | tee -a $LOG_FILE
vm_stat | head -5 | tee -a $LOG_FILE
echo "✅ Memory check complete" | tee -a $LOG_FILE

# Check CPU usage
echo "" | tee -a $LOG_FILE
echo "Checking CPU usage..." | tee -a $LOG_FILE
top -l 1 | grep "CPU usage" | tee -a $LOG_FILE
echo "✅ CPU check complete" | tee -a $LOG_FILE

# Check common dev ports
echo "" | tee -a $LOG_FILE
echo "Checking common ports..." | tee -a $LOG_FILE

for port in 3000 5432 8080 8000; do
    if lsof -i :$port > /dev/null 2>&1; then
        echo "✅ Port $port: ACTIVE" | tee -a $LOG_FILE
    else
        echo "❌ Port $port: INACTIVE" | tee -a $LOG_FILE
    fi
done

echo "" | tee -a $LOG_FILE
echo "---" | tee -a $LOG_FILE
echo "" | tee -a $LOG_FILE
