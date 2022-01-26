#!/usr/bin/env bash
cd /home/ec2-user/ml-api
#check if the npm is installed
if ! [ -x "$(command -v npm)" ]; then
  echo 'npm is not installed. Installing npm...' >&2
  sudo yum install -y npm
fi	

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
npm install
