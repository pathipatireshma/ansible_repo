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


# Creating Instance
 aws ec2 run-instance --image-id ${AMI_ID} --instance-type t3.micro --output text --tag-specification "ResourceType-instance,Tags=[{key=Name,value=${Instance_name}}]" "ResourceType=spot-instance-request,Tags=[{Key=Name,Value=${Instance_name}}]" --instance-market-options "MarketType=spot,SpotOptions={InstanceInterruptionBehavior=stop,SpotInstanceType=persistence}" &>>LOG
    echo -e "\e[1m Instance created\e[0m"
  else
    echo "Instance ${Instance_name} is already exists, Hence not creating"


#    aws ec2 run-instances --image-id ${AMI_ID} --instance-type t3.micro --output text --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${INSTANCE_NAME}}]" "ResourceType=spot-instances-request,Tags=[{Key=Name,Value=${INSTANCE_NAME}}]"  --instance-market-options "MarketType=spot,SpotOptions={InstanceInterruptionBehavior=stop,SpotInstanceType=persistent}" --security-group-ids "${SG_ID}"  &>>$LOG
#    echo -e "\e[1m Instance Created\e[0m"
#  else
#    echo "Instance ${INSTANCE_NAME} is already exists, Hence not creating"
#  fi



#PRIVATE_IP=$(aws ec2 describe-instances --filters "Name=tag:Name,Values=${INSTANCE_NAME}" --query 'Reservations[*].Instances[*].PrivateIpAddress' --output text)
#
#  if [ -z "${PRIVATE_IP}" ]; then
#     Find Security Group



}

