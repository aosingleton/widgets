#!/bin/bash

# agent download link will be one of the below (region or non-region)
sudo su

# download link
wget https://s3.amazonaws.com/amazoncloudwatch-agent/amazon_linux/amd64/latest/amazon-cloudwatch-agent.rpm

# install the package/ upgrade
sudo rpm -U ./amazon-cloudwatch-agent.rpm

# wizard out the box metrics (others are available depending on config selections)
mem_used_percen
cpu_usage_system
disk_used_percent

# run the configuration wizard (config examples inculded in repo)
# configuration can also be updated manaually by echoing specific requirements into config file
/opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-config-wizard

# start
sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json -s

sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:configuration-file-path -s

# location of config file
/opt/aws/amazon-cloudwatch-agent/bin/config.json

sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl -a fetch-config -m ec2 -c file:/opt/aws/amazon-cloudwatch-agent/bin/config.json -s

