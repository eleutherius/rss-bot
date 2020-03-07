#!/bin/bash
base_python_interpreter=""
project_path=`pwd`
demon="rss-bot"
path="rss_bot_path"

read -p "Python interpreter: " base_python_interpreter
`$base_python_interpreter -m venv env`
source env/bin/activate
pip install -U pip
pip install -r requirements.txt

sed -i "$path~$project_path~g" systemd/$demon.service

sudo ln -s $project_path/systemd/$demon.service /etc/systemd/system/

sudo systemctl daemon-reload
sudo systemctl start $demon
sudo systemctl enable $demon