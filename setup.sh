#!/bin/bash

# Update the OS and install Software Carpentry requirements
sudo apt-get update -y
sudo apt-get dist-upgrade -y 
sudo apt-get install -y git sqlite3 zsh r-base 

# Install/update Anaconda and adjust environment
ANACONDA_HOME=$HOME/anaconda
wget http://repo.continuum.io/archive/Anaconda-2.0.1-Linux-x86_64.sh
bash Anaconda-2.0.1-Linux-x86_64.sh -b -p $ANACONDA_HOME
echo "PATH=$ANACONDA_HOME/bin:$PATH" >> ~/.bashrc
echo "export PATH" >> ~/.bashrc
$ANACONDA_HOME/bin/conda update --yes conda
$ANACONDA_HOME/bin/conda update --yes anaconda

# Make IPython notebook start at boot
sudo sh -c "echo 'cd /vagrant && $ANACONDA_HOME/bin/ipython notebook --ip=* --no-browser &' > /etc/rc.local"
sudo sh -c "echo 'exit 0' >> /etc/rc.local"

# Restart
sudo reboot
