#!/bin/bash

echo "Write a path to logs:"
read dir

if [ -d "$dir" ]; then
  echo "Directory found: $dir"
  logsa=$(find "$dir" -name "*.log" -type f -mtime -1)
  log_count=$(echo "$logsa" | grep -c '^')

  if [ "$log_count" -gt 0 ]; then
    echo "$logsa" | xargs rm -v
    echo "$log_count .log files deleted."
  else
    echo "No .log files found in $dir."
  fi
else
  echo "Specified logs directory doesn't exist."
  exit 1
fi

echo "Write a path to tpms:"
read dir_tpm

if [ -d "$dir_tpm" ]; then
  echo "Directory found: $dir_tpm"
  tpmsa=$(find "$dir_tpm" -name "*.tpm" -type f -mtime -1)
  tpm_count=$(echo "$tpmsa" | grep -c '^')

  if [ "$tpm_count" -gt 0 ]; then
    echo "$tpmsa" | xargs rm -v
    echo "$tpm_count .tpm files deleted."
  else
    echo "No .tpm files found in $dir_tpm."
  fi

  total_deleted=$((log_count + tpm_count))
  echo "$total_deleted files were deleted in total."
else
  echo "Specified TPMs directory doesn't exist."
  exit 1
fi
