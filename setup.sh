#!/usr/bin/env bash

cp /home/vagrant/vm-folders/.bashrc ~/.bashrc
cp /home/vagrant/vm-folders/.vimrc ~/.vimrc
cp /home/vagrant/vm-folders/.nvmrc ~/.nvmrc
echo "Hello!"

# Download and install NVM
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh 2> /dev/null | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

cd ~
nvm install
npm install -g @angular/cli