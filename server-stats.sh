echo "1. CPU Usage"
echo "2. Memory Usage"
echo "3. Disk Usage"
echo "4. Top 5 processes by CPU usage"
echo "5. Top 5 processes by memory usage"
echo "Enter your choice =>"
read choice

if [ $choice == 1 ]; then
    echo "CPU Usage:"
    top -bn1 | grep "Cpu(s)" | \
    sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
    awk '{print 100 - $1"%"}'
elif [ $choice == 2 ]; then
    echo "Memory Usage:"
    free -h
elif [ $choice == 3 ]; then
    echo "Disk Usage:"
    df -h
elif [ $choice == 4 ]; then
    echo "Top 5 processes by CPU usage:"
    ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6
elif [ $choice == 5 ]; then
    echo "Top 5 processes by memory usage:"
    ps -eo pid,comm,%mem --sort=-%mem | head -n 6
else
    echo "Invalid choice!"
fi
