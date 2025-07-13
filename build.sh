#!/bin/bash
# Copy Content
echo "Syncing vault..."
rm -rf ./content
cp -r /Users/sourabh/Desktop/Laputa ./content

# Build
npx quartz build --serve