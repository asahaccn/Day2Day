
This script will report the AWS resource usage.

#! /bin/bash

#################################################
# Author : asahaccn
# Date : 8th May, 2025
#
#
# Version : V1
#
# This script will report the AWS resource usage
##################################


# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users


Set -x
#  list s3 buckets
aws s3 ls

# list EC2 Instances
aws ec2 describe-instances

# list lambda
aws lambda list-functions

# list IAM users
aws iam list-users

To get output in parsed json format we will use jq

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'


aws ec2 describe-instances | jq '.Reservations[].Instances[].ImageId'
