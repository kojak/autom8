Kojak - Autom8
=======================

Kojak Autom8 is fully integrated DevOps circuit that uses Openshift Origin and Fabric8 to deploy applications in the cloud.

![GitHub Logo](/slides/00.png)

Kojak started off as a collection of scripts which were used to automate the installation and configuration of the Koji build system. It was part of a productization effort to encourage the adoption of Koji for use in development, testing and staging environments.  The scripts included in this repository can be used to create a complete DevOps circuit with Source Control Manager, Continious Integration, Artifact Repository Manager and Testing Suite.
 
Tool Chain
----------

Kojak ships with an, industry reconised, opensource toolchain designed to allow developers to build, test, deploy, promote, release and replicate product builds in a consistent and predictable way.  The long term goal is to provide a DevOps platform to allow users to familiarize themselves with the DevOps aproach and tools.   

Installation Prerequisites
---------------------------

Kojak is a virtual appliance and it not recommended that you install directly on your workstation.  The Installation options will build a virtual machine for you which will be accessible from your local host.  If you already have a virtual machine you can install Kojak directly on that machine and skip the virtual machine provisioning stage.  Kojak has been successfully installed and tested on CentOS 7+ and RHEL 7+.

For more information about virtualization see below:

CentOS http://wiki.centos.org/HowTos#head-fb1ff7e71fb5f2f511cda8c68cb6ba5f6e8decae 

Fedora http://fedoraproject.org/wiki/Virtualization?rd=Tools/Virtualization

It is recommended that the system be updated before beginning the installation.  A fast internet connection is also required in order to facilitate the downloading of any package dependancies.

Minimum System Requirements
--------------------------- 

The virtual machine is configured with the following default specifications:

1. 8GB RAM
2. 48GB Disk Space

Your local host should be configured with the following minimum specifications:

1. Centos/RHEL 7+ or Fedora 18+ with virtualization package group
2. 16GB RAM
3. 128 GB Disk Space 

Installation Prerequisites
--------------------------

DNS will need to be set up as per the instructions for Openshift Origin.  

Installation Instructions
------------------------

Checkout the contents of the Kojak git repository to a suitable directory on your host and execute the kojak executable.
```
[root@localhost]# yum -y install git
[root@localhost]# mkdir workspace
[root@localhost]# cd workspace 
[root@localhost]# git clone https://github.com/kojak/autom8.git
[root@localhost]# cd autom8
[root@localhost]# ./auto8
```
Or as a one liner.
```
yum -y install git && mkdir workspace && cd workspace && git clone https://github.com/kojak/autom8 && cd autom8 && ./autom8
```

At this stage the system is fully installed and configured.  

You can now browsing to the Fabric8 web console via http://fabric8.example.com with the following credentials:
1. username: admin
2. password: admin


Configuration Notes
-------------------
The Kojak virtual machine is configured with a set of default options.  

1. OS: CentOS 7
2. Hostname: master.example.com
3. IP Adress: 192.168.122.100
4. Subnet Mask: 255.255.255.0

You can access the virtual machine via ssh at 192.168.122.100 using the following credentials:

1. username: root
2. password: root

Known Issues and How to Report Them
-----------------------------------

Please follow this template while reporting an issue:

Component: Host, Guest (OS version), Koji, Apache HTTP etc.

Description: description of the situation 

Steps to reproduce: clear description of how to reproduce the issue, as ordered list

Expected result: the result that was expected

Actual result: the actual result including error messages, exceptions etc.

See http://github.com/sbadakhc/kojak/issues?state=open

Discussion
----------

Join our community at https://plus.google.com/u/0/communities/103028582394768375364

