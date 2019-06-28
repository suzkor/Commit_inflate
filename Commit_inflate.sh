#!/bin/bash

#local_repo path
repo_path="/home/ec2-user/git/kuso_commit/"
#edit file name
file_name="sample.txt"

cd ${repo_path}
today=$(date "+%Y%m%d")
num=$((RANDOM%10))
for i in $(seq 0 $num); do
        echo ${today}"_"$i >> ${file_name}
        git commit -a -m "commit"
done
git push origin master
