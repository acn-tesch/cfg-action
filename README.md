# GitHub Action for AWS Cloudformation-Guard

Action in Github for verifying that cloudfomation templates meet a built-in pre-defined set of rules.

## AWS cloudfomration-guard

GitHub Repository:  https://github.com/aws-cloudformation/cloudformation-guard

## Cloudformation-Guard Version

[version 0.5.2-beta](https://github.com/aws-cloudformation/cloudformation-guard/releases/tag/v0.5.2-beta)
This version of the binaries are currently checked into this repository under the "cloudformation-guard" folder.

Additionally there is a Dockerfile, and a makebin.sh script that provides a consistent method for generating new binaries as needed.

It is recommended that this code be moved into another repository, and that the binares are stored in Artifactory and not stored in GitHub.

## Inputs

None

## Outputs

None

## Example usage

```yaml
uses: acn-tesch/cfg-action@master

# or specify a path!
uses: acn-tesch/cfg-action@master

```