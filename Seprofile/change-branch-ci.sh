#!/bin/bash
currentbranch='- Development' 
read -p "Which branch do you want to run CI/CD: " branchname

sed -i "s/$currentbranch/- $branchname/g" .gitlab-ci.yml
