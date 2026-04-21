#!/bin/bash
yum install git -y
git clone https://github.com/cs220s26/saeed_cicd /saeed_cicd
cd /saeed_cicd
python3 -m venv .venv
.venv/bin/pip install -r requirements.txt 
cp web_counter.service /etc/systemd/system
systemctl enable web_counter.service 
systemctl start web_counter.service

