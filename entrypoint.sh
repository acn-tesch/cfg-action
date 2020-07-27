#!/bin/bash

#cleanup

rm /tmp/cfn_templates
rd /tmp/cfn_guard_temp

grep -r --exclude="entrypoint.sh" 'AWSTemplateFormatVersion' ./* |cut -d':' -f1 > /tmp/cfn_templates
count=0
mkdir /tmp/cfn_guard_temp
for x in $(cat /tmp/cfn_templates); do
    echo "Scanning file - ${x}"
    cfn-guard -t ${x} -r /rules/cfn-guard-sg-rule-testing.ruleset > /tmp/cfn_guard_temp/results${count}.json
    cat /tmp/cfn_guard_temp/results${count}.json
    count=`expr $count + 1`
done
#python3 build_results_file.py