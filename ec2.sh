#!/bin/bash/

LOG=/tmp/instance-create.log
rm -f $LOG

INSTANCE_CREATE() {
  Instance_name=$1
  if [ -z "${Instance_name}" ]; then
    echo -e "\eInstance name argument is requried"
    exit
  fi

}

#INSTANCE_CREATE() {
#  INSTANCE_NAME=$1
#  if [ -z "${INSTANCE_NAME}" ]; then
#    echo -e "\e[1;33mInstance Name Argument is needed\e[0m"
#    exit
#  fi
#  INSTANCE_NAME="$1-dev"