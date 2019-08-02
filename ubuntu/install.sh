#!/bin/bash

# Install required dependencies
apt update && apt upgrade -y
apt install git wget curl vim -y

# Ruby on Rails install with rbenv
apt update
apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev -y
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
type rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 2.6.3 --verbose
rbenv global 2.6.3
rbenv rehash

# Postgres
apt update
apt install postgresql postgresql-contrib  -y

# docker
# curl -fsSL https://get.docker.com -o get-docker.sh
# sh get-docker.sh
# docker run hello-world
