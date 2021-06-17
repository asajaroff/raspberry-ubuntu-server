# Raspberry Pie 
This is a guide into setting up a Raspberry Pie with Ubuntu server and to perform some customization so that it may be used for workstation purposes.

We're going to set all 

# Initial setup
I've followed [this guide](https://ubuntu.com/tutorials/how-to-install-ubuntu-on-your-raspberry-pi#1-overview) from Canonical into how to set up an Ubuntu image in the Pie 4.

Once the server is up and running, this tutorial starts:

Default installations come with some crappy services which I won't use, so:

## Disable unused services
We can check for unused services by running:

```
sudo systemctl list-units --type=service | grep 'running'
```

For example, in order to disable `snapd` we must run:
```
sudo systemctl stop snapd;
sudo systemctl disable snapd

```


## Server configuration
Establish the desired hostname by modifing `/etc/hostname`.

### Services Enabled
* sshd
* nginx
* ovpn
* docker :joy:



### User Creation

```
useradd -g users -G adm dialout cdrom floppy sudo audio dip video plugdev netdev lxd -m -s /usr/bin/bash user

```

### Software
First of all, update!
```
sudo apt update && sudo apt upgrade -y && sudo apt autoremove
```

Lets install neovim, make, docker

* All versions of terraform
* All versions of kubectl
* Minikube ? 
* Ansible ? 

### Development software


