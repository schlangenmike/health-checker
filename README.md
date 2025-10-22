# Health Checker

![Version](https://img.shields.io/badge/version-1.1.2-blue)

A simple bash script to monitor local machine health.

## What It Checks

- Disk space usage
- Memory statistics
- CPU usage
- Active services on common development ports (3000, 5432, 8080, 8000)
- Network connectivity (internet connection)
- System uptime

## Usage
```bash
./health-check.sh
```

Results are displayed in terminal and saved to `health-check-TIMESTAMP.log`.

## Version

Current version: **1.1.2**

### Changelog
- v1.1.2 (2025-10-21)
  - Added multi-platform Docker support (ARM64 + x86)
- v1.1.0 (2025-10-20)
  - Added system uptime monitoring
- v1.0.0 (2025-10-19)
  - First versioned release
  - Cross-platform support (macOS and Linux)
  - Disk, memory, CPU monitoring
  - Port availability checks
  - Network connectivity test
  - Timestamped log files
  - Docker support

## Docker Usage

Supports multiple platforms (ARM64/Apple Silicon and x86/Intel).

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

## Kubernetes Deployment

Deploy as a CronJob (runs every 5 minutes):
```bash
kubectl apply -f k8s/health-checker-deployment.yaml
```

View logs:
```bash
kubectl logs -l job-name=health-checker
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
