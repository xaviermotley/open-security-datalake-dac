#!/bin/bash
export STRATUS_AWS_PROFILE=my-lab
export STRATUS_AWS_REGION=us-east-1

echo "\U0001F4A5 Running Stratus Red Team simulations..."
stratus run aws.ec2.security-group.exposure
stratus run aws.s3.bucket-enumeration
echo "\u2705 Attack simulations complete."
