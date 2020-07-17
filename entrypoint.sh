#!/bin/bash
set -eax

cfn-guard --version
cfn-guard -t $1 -r $2
