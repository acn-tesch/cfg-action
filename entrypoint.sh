#!/bin/bash

#cleanup

rm ${PWD}/cfn_templates


grep -r --exclude="entrypoint.sh" 'AWSTemplateFormatVersion' ./* |cut -d':' -f1 > /tmp/cfn_templates

if [-d ] ${PWD}/reports ; then
    echo "cleaning up existing report files"
    rm ${PWD}/reports/results*.json
else
    echo "Creating ${PWD}/reports"
    mkdir ${PWD}/reports
fi

for x in $(cat /tmp/cfn_templates); do
    echo "Scanning file - ${x}"
    echo "Scanning file - ${x}" > ${PWD}/reports/results${count}.txt
    echo "Scanning datetime - "$(date +%Y%m%d_%H%M%S)  >> ${PWD}/reports/results${count}.txt
    cfn-guard -vt ${x} -r /rules/cfn-guard-sg-rule-testing.ruleset >> ${PWD}/reports/results${count}.txt
    #cat ${PWD}/reports/results${count}.txt
    count=`expr $count + 1`
done
cat reports/results*.txt > consolidated_report.txt
cat consolidated_report.txt

# Python script would need work to be able to properly show the status it was designed for cfnnag and requires json input
# Results from CF-Guard are text documents, and not JSON.
#python3 build_results_file.py  
