#!/usr/bin/env bash

cd /home/ec2-user/ml-api

#check if the npm is installed
if ! [ -x "$(command -v npm)" ]; then
  echo 'npm is not installed. Installing npm...' 
  PATH="/home/ec2-user/.nvm/versions/node/v17.4.0/bin:$PATH"
fi	

/home/ec2-user/.nvm/versions/node/v17.4.0/bin/npm install
 
mkdir src/py/recommendation-engine
cp -r ../recommendation-engine/pre_process_matrix.py src/py/recommendation-engine
cp -r ../recommendation-engine/recommender_nn.py src/py/recommendation-engine
cp -r ../recommendation-engine/recommender_loss_function.py src/py/recommendation-engine
cp -r ../recommendation-engine/wallet_token.py src/py/recommendation-engine
cp -r ../recommendation-engine/tokens.json src/py/recommendation-engine
cp -r ../recommendation-engine/tokens.json src/py/recommendation-engine
cp -r ../recommendation-engine/memories src/py/recommendation-engine
cp -r ../recommendation-engine/deployment-data src/py/recommendation-engine
cp -r ../recommendation-engine/file_path.py src/py/recommendation-engine
cp -r ../recommendation-engine/nn_recommender.py src/py/recommendation-engine
cp -r ../recommendation-engine/.env ./

 