#!/bin/bash

sudo yum update
sudo yum install epel-release -y
sudo yum install nginx -y
service nginx restart

echo 'ngix instalado'

#criar usuário

useradd renan -m -c 'Renan Soares' -s /bin/bash -p $(openssl passwd -1 renan12345)

echo 'usuário criado'