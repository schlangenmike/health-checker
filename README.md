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
