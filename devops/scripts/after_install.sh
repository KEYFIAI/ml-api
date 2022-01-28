#!/usr/bin/env bash

cd /home/ec2-user/ml-api

#check if the npm is installed
if ! [ -x "$(command -v npm)" ]; then
  echo 'npm is not installed. Installing npm...' 
  PATH="/home/ec2-user/.nvm/versions/node/v17.4.0/bin:$PATH"
fi	

/home/ec2-user/.nvm/versions/node/v17.4.0/bin/npm install