#!/usr/bin/env bash
cd /home/ec2-user/ml-api
PATH="/home/ec2-user/.nvm/versions/node/v17.4.0/bin:$PATH"
pm2 start src/index.js
