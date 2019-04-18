apt update
yes Y | apt upgrade

### AUTO-COMPLETE
yes Y | apt install bash-completion
echo "if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi" >> ~/.bashrc

### GIT
apt update
yes Y | apt install git-core
git config --global user.name "lazybee27102"
git config --global user.email lazybee27102@gmail.com
git config --list

### DOCKER
apt remove docker docker-engine docker.io containerd runc
apt update
yes Y | apt install apt-transport-https ca-certificates curl gnupg2 software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
apt update
yes Y | apt install docker-ce docker-ce-cli containerd.io

### DOCKER-COMPOSE
curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
docker-compose --version

### RUBY
apt update
yes Y | apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
curl -sL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer | bash -

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

RUBY_CONFIGURE_OPTS=--disable-install-doc rbenv install --verbose 2.6.0
rbenv global 2.6.0
ruby -v

### POTGRES DB
apt update
yes Y | apt install postgresql postgresql-contrib -u postgres psql -c "SELECT version();"
yes Y | apt install python-psycopg2

### Nokogiri (Rails)
apt update
yes Y | apt install build-essential patch ruby-dev zlib1g-dev liblzma-dev
gem install nokogiri
yes Y | apt install libgmp-dev

apt update
yes Y | apt install nginx

apt update
yes Y | install certbot python-certbot-nginx

apt update
yes Y | apt install curl

curl -sL https://deb.nodesource.com/setup_11.x | bash -
yes Y | apt install -y nodejs
