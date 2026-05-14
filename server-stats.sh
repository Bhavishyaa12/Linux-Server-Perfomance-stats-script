#!/usr/bin/bash
#Author=Bhavishya
#colors
Red='\e[31m'
Cyan='\e[36m'
Reset='\e[0m'
Blue='\e[1;34m'
#!/bin/bash

spinner='|/-\'

for i in {1..20}
do
    printf "\rHiii ${USER}... ${spinner:i%4:1}"
    sleep 0.1
done
printf "\nThis script will help you analyze server perfomance------\n"
#Commands
Cpu_usage=$(top -b -n 1 | head -n 3 | tail -n 1);
Cpu_usage_tpro=$(top -b -n 1 | head -n 12 | tail -n 6);
Cpu_usage_mpro=$(top -b -n 1 | sort -k 10 -n | tail -n 6 | head -n 5);
Memory_usage_disk=$(df -h);
Memory_usage=$(du -h);
Load_avg=$(uptime | awk '{print $8,$9,$10}');


printf "Your cpu usage is as follows -"
echo -e  "${Red} ${Cpu_usage}${Reset}"
sleep .5 
echo "Analayzing disk space"
sleep .5
echo "....................."
sleep .5
printf "Total disk space left in filesystem is as follows -\n"
echo ""
echo -e "${Red} ${Memory_usage_disk} ${Reset}";
echo ""
echo ""
sleep .5
echo -e "${Blue}Total disk usage for the current directory is wriiten in the disk_usage.log file you can view it by typing cat disk_usage.log -${Reset}"
echo -e "${Red} ${Memory_usage} ${Reset}" > disk_usage.log;
sleep 1
echo ""
echo ""
echo -e "${Cyan}Analyzing your top 5 processes consuming the highest cpu usage with their process id ${Reset}"
sleep .5
echo ""
echo "${Cpu_usage_tpro}\n"
sleep .5
sleep .4
echo ""
echo ""
echo -e "${Cyan}Now by memory(RAM) usage ${Reset}"
echo ""
sleep 1
printf "${Cpu_usage_mpro}\n"
echo ""
sleep .5
echo -e "${Cyan}Calculating the load average of cpu in 1 min:5 min:15 min ${Reset}"
sleep .5
echo "${Load_avg}"
sleep 1
echo ""
echo "Thank you for using this script do star my repo :)"





