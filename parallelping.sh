#!/bin/bash
if [ -n "$3" ]; then
    output_file="$3"
else
    output_file=""
fi
printf "# $(date) ######\n" >> $output_file
parallel -j 1 -a "$1" "echo ping -c1 -W1 on {}" >> $output_file
while true
do
    printf "# $(date) ######\n" | tee -a $output_file
    parallel -j 32 -a "$1" "if ping -c1 -W1 {} > /dev/null 2>&1; then printf '%-20s OK\n' {}; else printf '%-20s DOWN\n' {} | tee -a "$output_file"; fi"
    
    sleep $2
    clear
done
