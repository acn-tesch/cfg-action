#!/bin/bash

cfn-guard --version
cfn-guard -vt $1 -r $2
