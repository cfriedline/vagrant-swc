#vagrant-swc

This repo provides a [Vagrant](http://www.vagrantup.com) 
configuration for building a [VirtualBox](http://www.virtualbox.org) 
Ubuntu VM with all of the software required for a 
[Software Carpentry](http://software-carpentry.org) bootcamp.

##Instructions

1. Install Virtualbox and Vagrant
1. Clone the repo locally
1. Change to that directory
1. Run `vagrant up`
1. After the box is done building, access it by `vagrant ssh`

##Installed software

* latest Ubuntu updates
* git
* sqlite3
* zsh
* R
* Anaconda

##Notes

The VM will also start an IPython notebook session in the guest 
at boot time.  To connect the notebook running in the virtual machine, 
point your browser to [http://localhost:9999](http://localhost:9999)
