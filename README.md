# Health Checker

A simple bash script to monitor local machine health.

## What It Checks

- Disk space usage
- Memory statistics
- CPU usage
- Active services on common development ports (3000, 5432, 8080, 8000)
- Network connectivity (internet connection)

## Usage
```bash
./health-check.sh
```

Results are displayed in terminal and saved to `health-check.log`.

## Requirements

- macOS or Linux
- Bash

## Installation
```bash
git clone https://github.com/yourusername/health-checker.git
cd health-checker
chmod +x health-check.sh
./health-check.sh
```
