#!/bin/bash

for i in {1..10}; do

    current_time=$(date +%H:%M:%S)

    process_count=$(ps -ef | wc -l)

    echo "$current_time - Number of processes: $process_count"

    sleep 5

done

cat /proc/cpuinfo > cpu_info.txt

cat /etc/os-release | grep NAME > os_info.txt

os_name=$(grep NAME /etc/os-release | awk -F '=' '{print $2}' | tr -d '\"')
echo "Name of operiting system: %os_name" > os_name.txt

for i in $(seq 50 100); do

    touch "${i}.txt"

done

echo "This script was execute successfully"
