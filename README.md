# GitHub Action for AWS Cloudformation-Guard

Action in Github for verifying that cloudfomation templates meet a defined set of rules.

## AWS cloudfomration-guard

GitHub Repository:  https://github.com/aws-cloudformation/cloudformation-guard

## Cloudformation-Guard Version

version 0.5.2-beta

## Inputs

### `path`

**Required** filepath to your Cloudformation Template

**Default** `"."`

### 'rule'

**Required** filepath of your rules file

**Default** `"default-rules"`

## Outputs

None

## Example usage

```yaml
uses: acn-tesch/cfg-action@master

# or specify a path!
uses: acn-tesch/cfg-action@master
with:
  path: 'mycft.yaml'
  rule: 'myrules.yaml'
```