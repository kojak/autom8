Kojak Autom8 DevOps Circuit
===========================

Virtual Machine Assumptions
---------------------------

1. OS: CentOS 7
2. Hostname: openshift.example.com
3. IP Adress: 192.168.122.101
4. Subnet Mask: 255.255.255.0

Installation Instructions
-------------------------

As the root user execute the following command from the root users home directory:
```
yum -y install git && mkdir workspace && cd workspace && git clone https://github.com/kojak/autom8 && cd autom8 && ./kojak
```

Operating Instructions
----------------------

You can browse to the Fabric8 console by pointing to http://fabric8.example.com and loging with user name and password admin. 
