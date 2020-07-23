#!/bin/bash

cd /tmp

git clone https://github.com/aws-cloudformation/cloudformation-guard.git
cd cloudformation-guard
make release_with_binaries

cp bin/cfn-guard /cfg/cfn-guard
cp bin/cfn-guard-rulegen /cfg/cfn-guard-rulegen