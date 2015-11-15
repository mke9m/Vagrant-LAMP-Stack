Vagrant-LAMP-Stack Ubuntu 12.04LTS
==================
*Current version 1.2*

[![Vagrant Logo](https://camo.githubusercontent.com/51b172d944dd3848632774f14a6c02a6feae467b/687474703a2f2f6572696b6168656964692e636f6d2f7468656d652f6661746361747a2f696d616765732f76616772616e742f6c6f676f5f76616772616e742e706e67)](https://www.vagrantup.com/)


                                                        
                                                      

Prerequisites
-------------

Virtual Box -- https://www.virtualbox.org/wiki/Downloads
Vagrant -- https://www.vagrantup.com/

An understanding of Ubuntu 12/Linux


Description
-----------

This vagrant script will install the following on Ubuntu 12.04

* Apache2
* MYSQL
* PHP

*PHP errors have been enabled
*Apache mod rewrite has been enabled
*passwords in this script have been set to ‘password’ I suggest you change this before running the script.

Webmin has been commented out as it is not working as expected.


Instructions
------------


 
 - Create a folder for your VM

 - Clone this repository and place the VAGRANT and bootstrap file in
           the folder you have created above and overwrite the default VAGRANT
           file.
 - Run the command “vagrant up”
 - Once the script has completed run “vagrant ssh”

this should show you the below output or similar 

    Host: 192.168.50.4
    Port: 22
    Username: vagrant 

Use the above information to SHH with whatever SSH client you prefer. The username is vagrant and the password is vagrant.

Change Log
----------

*v1.2*

 - Added webmin to source list
 - Installed webmin, access via https://192.168.50.4:10000/

Additional Notes
----------------

**All passwords used in this tutorial should be reset.**
Connect to SSH via 192.168.50.4 port 22

Upcoming in v1.3
----------------

 - install phpmyadmin
 - Create a SAMBA share for the www directory
