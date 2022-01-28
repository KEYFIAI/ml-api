#!/usr/bin/env bash

cd /home/ec2-user/ml-api
PATH="/home/ec2-user/.nvm/versions/node/v17.4.0/bin:$PATH"
npm i -g pm2
npm install