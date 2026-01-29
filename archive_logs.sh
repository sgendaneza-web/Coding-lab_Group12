#!/bin/bash
echo "Select log to archive:"
echo "1) Heart Rate"
echo "2) Temperature"
echo "3) Water Usage"
read choice

case $choice in
  1) log="heart_rate.log" ;;
  2) log="temperature.log" ;;
  3) log="water_usage.log" ;;
  *) echo "Invalid choice"; exit 1 ;;
esac

timestamp=$(date +"2026-01-29_10:30:5")

mkdir -p hospital_data/archives

if [ ! -f hospital_data/active_logs/$log ]; then
  echo "Log file not found"
  exit 1
fi

mv hospital_data/active_logs/$log hospital_data/archives/${log%.*}_$timestamp.log
touch hospital_data/active_logs/$log

echo "Log archived successfully"
