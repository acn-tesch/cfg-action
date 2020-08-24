#!/bin/bash

mkdir /rules
cp ./cloudformation-guard/cfn-guard /usr/bin/cfn-guard
cp ./cloudformation-guard/cfn-guard-rulegen /usr/bin/cfn-guard-rulegen
cp ./rules/cfn-guard-sg-rule-testing.ruleset /rules/cfn-guard-sg-rule-testing.ruleset