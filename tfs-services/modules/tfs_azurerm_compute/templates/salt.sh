#!/bin/sh

# install the salt minion
sudo yum clean expire-cache
sudo yum install salt-minion -y
sudo systemctl enable salt-minion && sudo systemctl start salt-minion
sudo yum install python3 -y

# Define the YAML content to replace /etc/salt/minion
yaml_content='---
config_dir: /etc/salt
disable_modules:
- swarm
- boto3_elasticsearch
log_level: warning
master:
- salt-ctlr01.infra.shared.usw1.cloud.247-inc.net
- salt-ctlr01.infra.shared.east.cloud.247-inc.net
- salt-ctlr02.infra.shared.usw1.cloud.247-inc.net
- salt-ctlr02.infra.shared.east.cloud.247-inc.net
master_tries: -1
ping_interval: 10
random_master: true
random_startup_delay: 10
recon_default: 5000
...'

# Remove the existing content in /etc/salt/minion
sudo echo "" > /etc/salt/minion

# updating the dns name
sudo echo "" > /etc/salt/minion_id
# Read the user_data.txt file
user_data_file="/var/lib/cloud/instance/user-data.txt.i"
tmp_dns_name="dns_name"
tmp_short_dns_name="short_dns_name"
# Extract the value of the specified variable
dns_name=$(grep "\"${tmp_dns_name}\":" "$user_data_file" | awk -F'"' '{print $4}')
short_dns_name=$(grep "\"${tmp_short_dns_name}\":" "$user_data_file" | awk -F'"' '{print $4}')

sudo echo "${dns_name}" > /etc/salt/minion_id

# Update the /etc/resolv.conf file
sed -i "s/search .*/search ${short_dns_name}/" /etc/resolv.conf

# Add the YAML content to /etc/salt/minion
sudo echo "$yaml_content" > /etc/salt/minion


# Restart the salt minion
sudo systemctl restart salt-minion
