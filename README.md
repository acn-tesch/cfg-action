# GitHub Action for AWS Cloudformation-Guard

Action in Github for verifying that cloudfomation templates meet a built-in pre-defined set of rules.

## AWS cloudfomration-guard

GitHub Repository:  https://github.com/aws-cloudformation/cloudformation-guard

## Cloudformation-Guard Version

[version 0.6.0-beta](https://github.com/aws-cloudformation/cloudformation-guard/releases/tag/v0.6.0-beta)

Additionally there is a Dockerfile, and a makebin.sh script that provides a consistent method for generating new binaries as needed.

It is recommended that this code be moved into another repository, and that the binares are stored in Artifactory and not stored in GitHub.

## Inputs

None

## Outputs

None

## Example usage

```yaml
name: Test Cloud Formation Templates - PubAction

on:
  workflow_dispatch:


jobs:

  Test_All_cloudformation_templates:

    runs-on: ubuntu-18.04
    steps:
    # Checks-out your repository under $GITHUB_WORKSPACE, so your job can access it
    - name: Checkout Code
      uses: actions/checkout@v2

    # uses publicly available github action
    - name: Cloudformation-guard Test
      uses: acn-tesch/cfg-action@check-all
```


Private Actions are more complicated, and rely on a public action in order to function.
This example yaml is still a work in progress.


## Writing Rules

For details on how to write rules use the [reference documentation(https://github.com/aws-cloudformation/cloudformation-guard/tree/master/cfn-guard#writing-rules)

All rules for this action are stored in the rules folder.

The default rules file [rules/cfn-guard-sg-rule-testing.ruleset](./rules/cfn-guard-sg-rule-testing.ruleset)



## Visual Studio Code - .devcontainer

Included in this repository is a VS code development container that can be used to test cloud formation guard.  

You must first install the "Remote-Development" extension and the docker on your local workstation.  

## Building the cf-guard action container

Workflow "docker-publish.yml" defines how the container is build, and uploaded as a github package.