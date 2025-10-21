# Health Checker

![Version](https://img.shields.io/badge/version-1.0.0-blue)

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

Results are displayed in terminal and saved to `health-check-TIMESTAMP.log`.

## Version

Current version: **1.0.0**

### Changelog
- v1.0.0 (2025-10-19)
  - First versioned release
  - Cross-platform support (macOS and Linux)
  - Disk, memory, CPU monitoring
  - Port availability checks
  - Network connectivity test
  - Timestamped log files
  - Docker support

## Docker Usage

Run without installing:
```bash
docker run schlangenmike/health-checker
```

Or build locally:
```bash
docker build -t health-checker .
docker run health-checker
```

Pull from Docker Hub:
```bash
docker pull schlangenmike/health-checker
```

## Requirements

- macOS or Linux
- Bash

## Installation
```bash
git clone https://github.com/yourusername/health-checker.git
cd health-checker
./health-check.sh
```
