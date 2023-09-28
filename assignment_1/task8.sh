#!/bin/bash

NEW_JOB_NAME=$1

sed -i "s/job \"example\"/job \"$NEW_JOB_NAME\"/g" example.nomad




chmod +x task8.sh
./task8.sh ANYTHING