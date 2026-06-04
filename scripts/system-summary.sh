#!/bin/bash

# Generate a quick system summary

echo "===== System Summary ====="

echo ""
echo "Hostname:"
hostname

echo ""
echo "Uptime:"
uptime

echo ""
echo "Memory:"
free -h

echo ""
echo "Disk:"
df -h

echo ""
echo "Java:"
java -version
