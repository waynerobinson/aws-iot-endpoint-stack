# AWS IOT Endpoint Stack

The current IOT endpoint for an account isn't currently available as a CloudFormation or SSM variable.

This is a simple stack that calls the [Describe Endpoint](https://docs.aws.amazon.com/iot/latest/apireference/API_DescribeEndpoint.html) API and returns the response as an Output to this template.

## Dependencies

A current version of the [AWS Command Line Interface](https://aws.amazon.com/cli/) (not sure what the earliest supported version is, but this template has been tested on `1.15.26`.

## Usage

Deploy the template. Stack name will be `iot-endpoint`:

`make deploy`

Delete the template:

`make delete`

Or if you'd like to run this directly with the AWS CLI:

`aws cloudformation deploy --capabilities CAPABILITY_IAM --template-file ./template.yml --stack-name $(STACK_NAME)`

Or you can launch the stack directly in the AWS console via:

[![Launch IOT Endpoint CloudFormation Stack](https://s3.amazonaws.com/cloudformation-examples/cloudformation-launch-stack.png)](https://console.aws.amazon.com/cloudformation/home?#/stacks/new?stackName=iot-endpoint-test&templateURL=https%3A%2F%2Fs3-us-west-2.amazonaws.com%2Fwayne-robinson-public-cloud-formation-us-west-2%2Fcf-iot-endpoint.yml)

## References

Inspired by https://stackoverflow.com/a/44628055
