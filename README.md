Hospital Data Monitoring & Archival System

This project collects hospital device data such as heart rate,
temperature, and water usage. It allows users to archive log files
and analyze them using shell scripts.

How to Run the Project:

1. Start the simulators:
   python3 heart_rate_monitor.py start
   python3 temperature_recorder.py start
   python3 water_consumption.py start

2. Archive logs:
   ./archive_logs.sh

3. Analyze logs:
   ./analyze_logs.sh

