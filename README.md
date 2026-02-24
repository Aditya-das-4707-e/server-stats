# Server Stats Script

A simple and interactive bash script to monitor system performance metrics including CPU usage, memory usage, disk usage, and top processes.

## Overview

The `server-stats.sh` script provides a menu-driven interface to quickly check various server statistics without needing to remember complex command syntax. It's useful for system administrators, DevOps engineers, and anyone who needs to monitor server performance.

## Features

- **CPU Usage**: Display current CPU utilization percentage
- **Memory Usage**: Show detailed memory information including used, free, and swap memory
- **Disk Usage**: View disk space usage across all mounted filesystems
- **Top 5 CPU Processes**: Identify the top 5 processes consuming the most CPU resources
- **Top 5 Memory Processes**: Identify the top 5 processes consuming the most memory

## Requirements

- Bash shell
- Standard Linux utilities: `top`, `free`, `df`, `ps`
- Linux-based operating system

These utilities are pre-installed on most Linux distributions.

## Installation

1. Download or clone the script
2. Make it executable:
   ```bash
   chmod +x server-stats.sh
   ```

## Usage

Run the script:
```bash
./server-stats.sh
```

You will be presented with a menu:
```
1. CPU Usage
2. Memory Usage
3. Disk Usage
4. Top 5 processes by CPU usage
5. Top 5 processes by memory usage
Enter your choice =>
```

Enter a number (1-5) and press Enter to view the corresponding statistics. Enter any other value to see an "Invalid choice!" message.

## Menu Options

### Option 1: CPU Usage
Displays the current CPU utilization as a percentage.
```
CPU Usage:
15.4%
```

### Option 2: Memory Usage
Shows memory statistics in human-readable format (GB, MB):
```
Memory Usage:
              total        used        free      shared  buff/cache   available
Mem:           15Gi       8.2Gi       4.1Gi       512Mi       2.7Gi       6.0Gi
Swap:          2.0Gi       512Mi       1.5Gi
```

### Option 3: Disk Usage
Displays disk usage for all mounted filesystems:
```
Disk Usage:
Filesystem     Size  Used Avail Use% Mounted on
/dev/sda1      100G   45G   55G  45% /
```

### Option 4: Top 5 Processes by CPU Usage
Lists the 5 processes using the most CPU:
```
Top 5 processes by CPU usage:
    PID COMMAND         %CPU
   1234 python           8.5
   5678 node             6.2
   9012 bash             2.1
```

### Option 5: Top 5 Processes by Memory Usage
Lists the 5 processes using the most memory:
```
Top 5 processes by memory usage:
    PID COMMAND         %MEM
   1234 java            12.5
   5678 chrome           8.2
   9012 mysqld           5.3
```

## Examples

Check current memory usage:
```bash
$ ./server-stats.sh
1. CPU Usage
2. Memory Usage
3. Disk Usage
4. Top 5 processes by CPU usage
5. Top 5 processes by memory usage
Enter your choice =>
2
Memory Usage:
              total        used        free      shared  buff/cache   available
Mem:           15Gi       8.2Gi       4.1Gi       512Mi       2.7Gi       6.0Gi
Swap:          2.0Gi       512Mi       1.5Gi
```

Identify resource-hungry processes:
```bash
$ ./server-stats.sh
...
Enter your choice =>
4
Top 5 processes by CPU usage:
    PID COMMAND         %CPU
   2847 python           25.3
   3156 nginx            12.1
   4021 node              5.8
```

## Tips

- Run the script periodically to monitor system health over time
- Check "Top 5 processes" options to identify resource-hungry applications
- Use the disk usage option to prevent running out of disk space
- Monitor memory usage to ensure optimal system performance

## Troubleshooting

**Script won't run**
- Ensure the script has execute permissions: `chmod +x server-stats.sh`
- Verify you're using a bash-compatible shell

**Commands not found error**
- Ensure your system has the required utilities installed (top, free, df, ps)
- On Debian/Ubuntu: `sudo apt-get install procps coreutils util-linux`

**Permission denied**
- Run with sudo if accessing privileged process information: `sudo ./server-stats.sh`

## Notes

- The script provides a snapshot of system metrics at the moment it's run
- For continuous monitoring, consider running it repeatedly or using dedicated monitoring tools
- Some process information may require elevated privileges to display completely
- The top 5 processes listing includes the header row, so 6 rows are displayed total
