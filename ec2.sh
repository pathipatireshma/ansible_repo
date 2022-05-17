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
}

#INSTANCE_CREATE() {
#  INSTANCE_NAME=$1
#  if [ -z "${INSTANCE_NAME}" ]; then
#    echo -e "\e[1;33mInstance Name Argument is needed\e[0m"
#    exit
#  fi
#  INSTANCE_NAME="$1-dev"