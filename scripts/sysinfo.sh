#!/usr/bin/env bash
# sysinfo.sh - easy system information script

OUTPUT_FILE="sysinfo.log"

{
  echo "==== Systeminfo ===="
  echo "Data: $(date)"
  echo "Uptime: $(uptime -p)"
  echo
  echo "==== Logged-on users ===="
  who
  echo
  echo "==== RAM ===="
  free -h
  echo
  echo "==== Disks ===="
  df -hT --exclude-type=tmpfs --exclude-type=devtmpfs
} > "$OUTPUT_FILE"

echo "Report saved to $OUTPUT_FILE"
