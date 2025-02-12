#!/bin/bash
echo " .------------------------------.";
echo " | _____          _             |";
echo " ||  ___|   _ ___(_) ___  _ __  |";
echo " || |_ | | | |_  / |/ _ \| '_ \ |";
echo " ||  _|| |_| |/ /| | (_) | | | ||";
echo " ||_|   \__,_/___|_|\___/|_| |_||";
echo " |     _______  _______         |";
echo " |    |_   _\ \/ /_   _|        |";
echo " |      | |  \  /  | |          |";
echo " |      | |  /  \  | |          |";
echo " |      |_| /_/\_\ |_|BitKeyHash|";
echo " '------------------------------'";
# Prompt user for input file names and output file name
read -p "Enter the name of the first input file: " file1
read -p "Enter the name of the second input file: " file2
read -p "Enter the name of the output file: " output_file

# Check if input files exist
if [ ! -f "$file1" ] || [ ! -f "$file2" ]; then
    echo "Error: One or both input files do not exist."
    exit 1
fi

# Process the files
while IFS= read -r line1; do
  while IFS= read -r line2; do
    echo "$line1$line2"
  done < "$file2"
done < "$file1" > "$output_file"

echo "Processing complete. Output written to $output_file"
