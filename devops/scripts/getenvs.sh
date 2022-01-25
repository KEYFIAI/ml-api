#!/bin/bash

STAGE=$1

# Update variables
echo "COINGECKO_API=`aws ssm get-parameter --region ${AWS_DEFAULT_REGION} --with-decryption --name /ECS-CLUSTER/$STAGE/COINGECKO_API --output text --query Parameter.Value`" >> ../././recommendation-engine/.env
echo "KEYFI_BALANCE_API=`aws ssm get-parameter --region ${AWS_DEFAULT_REGION} --with-decryption --name /ECS-CLUSTER/$STAGE/KEYFI_BALANCE_API --output text --query Parameter.Value`" >> ../././recommendation-engine/.env