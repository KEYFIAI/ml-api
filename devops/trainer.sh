#!/bin/bash

bold=$(tput bold)
normal=$(tput sgr0)

start_time=$SECONDS

echo  "Running $bold Tokens Script$normal" 
task_start =$SECONDS
python3 ../././recommendation-engine/tokens.py
end_task=$(( SECONDS - task_start ))
echo  "$bold Tokens Script $normal Finished"
eval "echo Tokens Script Elapsed time: $(date -ud "@$end_task" +'$((%s/3600/24)) days %H hr %M min %S sec')"
task_start = 0
end_task = 0
echo  " "
echo  "Running  $bold Convert to Matrix Script $normal" 
task_start =$SECONDS
python3 ../././recommendation-engine/convert_to_matrix_data.py
end_task=$(( SECONDS - task_start ))
echo  "$bold Convert to Matrix Script $normal Finished"
eval "echo Convert to Matrix Script Elapsed time: $(date -ud "@$end_task" +'$((%s/3600/24)) days %H hr %M min %S sec')"
task_start = 0
end_task = 0
echo  " "

echo  "Running  $bold Generate Real Trainning Script $normal" 
task_start =$SECONDS
python3 ../././recommendation-engine/generate_real_training_data.py 100
end_task=$(( SECONDS - task_start ))
echo  "$bold Generate Real Trainning Script $bold $normal Finished"
eval "echo Generate Real Trainning Script Elapsed time: $(date -ud "@$end_task" +'$((%s/3600/24)) days %H hr %M min %S sec')"
task_start = 0
end_task = 0
echo  " "

echo  "Running $bold Trainning Script $normal" 
task_start =$SECONDS
python3 ../././recommendation-engine/nn_trainer.py
end_task=$(( SECONDS - task_start ))
echo  "$bold Trainning Script $normal Finished"
eval "echo Trainning Script Elapsed time: $(date -ud "@$end_task" +'$((%s/3600/24)) days %H hr %M min %S sec')"
task_start = 0
end_task = 0
echo  " "

echo "Runnecho  " "
ing $bold Deployment Data Script $normal" 
task_start =$SECONDS
python3 ../././recommendation-engine/generate_deployment_data.py
end_task=$(( SECONDS - task_start ))
echo  "$bold Deployment Data Script  $normal Finished"
eval "echo Deployment Data Script Elapsed time: $(date -ud "@$end_task" +'$((%s/3600/24)) days %H hr %M min %S sec')"
task_start = 0
end_task = 0
echo  " "

elapsed=$(( SECONDS - start_time ))

echo "The Machine Learning Training Finished" 

eval "echo Total Elapsed time: $(date -ud "@$elapsed" +'$((%s/3600/24)) days %H hr %M min %S sec')"
