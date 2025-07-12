#!/bin/bash

cd ../../terraform || { echo "Directory not found"; exit 1; }

public_dns=$(terraform output -raw public_dns)

cd ../infra/ansible || { echo "Failed to go back to ansible dir"; exit 1; }

cat > hosts.ini <<EOF
[web]
$public_dns ansible_user=ec2-user ansible_ssh_private_key_file=~/Downloads/spring.pem
EOF

echo "hosts.ini updated with dns: $public_dns"
