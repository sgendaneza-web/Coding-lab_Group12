#!/bin/bash

echo "Select log file to analyze."
echo "1)Heart Rate"
echo "2)Temperature"
echo "3)Water Usage"
read -p "choice": choice

case $choice in
	1)log_file="hospital_data/active_logs/heart_rate.log";;
	2)log_file="hospital_data/active_logs/temperature.log";;
	3)log_file="hospital_data/active_logs/water_usage.log";;
	*)echo "invalid choice." 
		exit 1;;
esac

if [ ! -f "$log_file" ]; then
	echo "log_file does not exist: $log_file"
	exit 1
fi

echo "Analysis on 2026-01-29">> reports/analysis_report.txt
awk '{print $1}' "$log_file" | sort |uniq -c >> reports/analysis_report.txt
echo "First entry:" >> reports/analysis_report.txt
head -n 1 "$log_file" >> reports/analysis_report.txt
echo "Last entry:" >> reports/analysis_report.txt
tail -n 1 "$log_file" >> reports/analysis_report.txt

		
