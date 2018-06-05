# AWS IOT Endpoint Stack

The current IOT endpoint for an account isn't currently available as a CloudFormation or SSM variable.

This is a simple stack that calls the (Describe Endpoint)[https://docs.aws.amazon.com/iot/latest/apireference/API_DescribeEndpoint.html] API and returns the response as an Output to this template.

## Dependencies

A current version of the (AWS Command Line Interface)[https://aws.amazon.com/cli/] (not sure what the earliest supported version is, but this template has been tested on `1.15.26`.

## Usage

Deploy the template. Stack name will be `iot-endpoint`:

`make deploy`

Delete the template:

`make delete`

Or if you'd like to run this directly with the AWS CLI:

`aws cloudformation deploy --capabilities CAPABILITY_IAM --template-file ./template.yml --stack-name $(STACK_NAME)`
