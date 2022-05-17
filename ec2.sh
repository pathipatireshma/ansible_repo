#!/bin/bash/

LOG=/tmp/instance-create.log
rm -f $LOG

INSTANCE_CREATE() {
  Instance_name=$1
  if [ -z "${Instance_name}" ]; then
    echo -e "\e[1;33mInstance name argument is requried\e[0m"
    exit
  fi
Instance_name="$1-dev"


  if [ -z "${AMI_ID}" ]; then
    echo -e "\e[1,31mUnable to find AMI_ID\e[0m"
    exit
  else
    echo -e "\e[1,32mAMI_ID = $AMI_ID\e[0m"
  fi
}

