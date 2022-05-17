#!/bin/bash/

LOG=/tmp/instance-create.log
rm -f $LOG

INSTANCE_CREATE() {
  Instance_name=$1
  if[ -z "${Instance_name}" ]; then
    echo -e "Instance name is requried"
    exit
  fi

}