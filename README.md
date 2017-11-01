Kojak - Autom8
=======================

Kojak Autom8 is an installater for Openshift Origin which preconfigures the container platform with many useful options which make it easy to create and deploy containers. 

![GitHub Logo](/slides/00.png)

Kojak started off as a collection of scripts which were used to automate the installation and configuration of the Koji build system. It was part of a productization effort to encourage the adoption of Koji for use in development, testing and staging environments. The scripts included in this repository can be used to create a complete SDLC CI/CD circuits with Openshift Origin.
 
Tool Chain
----------

Kojak Autom8 installs Openshift Origin and with templates that provide industry reconised opensource toolchain designed to allow developers to build, test, deploy, promote, release and replicate product builds in a consistent and predictable way.  The long term goal is to provide a platform to allow users to familiarize themselves with microservices and 12 Factor oud native applications  

Installation Prerequisites
---------------------------

Kojak is a virtual appliance and it not recommended that you install directly on your workstation. The Installation options will build a virtual machine for you which will be accessible from your local host. If you already have a virtual machine you can install Kojak directly on that machine and skip the virtual machine provisioning stage. Kojak has been successfully installed and tested on CentOS 7+ and RHEL 7+.

For more information about virtualization see below:

CentOS http://wiki.centos.org/HowTos#head-fb1ff7e71fb5f2f511cda8c68cb6ba5f6e8decae 

Fedora http://fedoraproject.org/wiki/Virtualization?rd=Tools/Virtualization

It is recommended that the system be updated before beginning the installation.  A fast internet connection is also required in order to facilitate the downloading of any package dependancies.

Minimum System Requirements
--------------------------- 

The virtual machine is configured with the following default specifications:

1. 8GB RAM
2. 64GB Disk Space

Your local host should be configured with the following minimum specifications:

1. Centos/RHEL 7+ or Fedora 18+ with virtualization package group
2. 16GB RAM
3. 128 GB Disk Space 

Virtual Machine Configuration
-----------------------------

The Kojak virtual machine is configured with a set of default options.

1. OS: CentOS 7
2. Hostname: master.example.com
3. IP Adress: 192.168.122.100
4. Subnet Mask: 255.255.255.0

If your're creating a virtual machine from scratch you should you configure it with the options detailed above. You can access the virtual machine via ssh at 192.168.122.100 using the following credentials:

1. username: root
2. password: root


If you use the KVM hypervisor you can create the virtual machine with the create-vm script. You can modify the varibles in the script to control alloted resources but it is recommeded that you stick with the defaults. On your localhost execute the following commands.
```
[root@localhost]# git clone https://github.com/kojak/autom8.git
[root@localhost]# cd autom8
[root@localhost]# ./create-vm
```
Add the following to your /etc/hosts file on your localhost in order to resolv the microservices shipped with Kojak Autom8 as part of the DevOps Cicuit.
```
192.168.122.100 example.com master.example.com register.example.com
```
Installation Instructions
------------------------

Login and install git, checkout the kojak  repo, execute the docker install script and reboot 
```
[root@localhost]# yum -y install git
[root@localhost]# mkdir workspace && cd workspace
[root@localhost]# git clone https://github.com/kojak/autom8.git
[root@localhost]# cd autom8
[root@localhost]# ./install-docker
[root@localhost]# reboot
```
Login and update the system.
```
[root@localhost]# yum -y update
[root@localhost]# reboot
```

Login and execute the autom8 script
```
[root@localhost]# cd workspace/autom8
[root@localhost]# ./auto8 -f master.example.com
```

Reboot the vm to effect the docker user settings. From here on in you should login as the devel user.

You can now browsing to the web console via http://master.example.com:8443 with the following credentials:

1. username: admin
2. password: admin

To configure new users login into the vitual machine and execute the following:
```
htpasswd -b /etc/openshift/users.htpasswd <user> <password>
```

Use the deploy.sh script to 'Bring Your Own Container' and deploy it to your Openshift instance.
```
[root@localhost]# ./deploy.sh
```

Known Issues and How to Report Them
-----------------------------------

Execute the autom8-diag script and send the output via a github ticket.

See http://github.com/sbadakhc/autom8/issues?state=open

Discussion
----------

Join our community at https://plus.google.com/u/0/communities/103028582394768375364
