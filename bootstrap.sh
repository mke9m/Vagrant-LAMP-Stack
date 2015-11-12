#!/bin/bash

# Updating repository

sudo apt-get -y update

# Installing Apache

sudo apt-get -y install apache2

# Installing MySQL

sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password Password'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password Password'
sudo apt-get -y install mysql-server libapache2-mod-auth-mysql php5-mysql

# Installing PHP
sudo apt-get -y install php5 libapache2-mod-php5 php5-mcrypt


#Installing some more PHP stuff
apt-get -y install php5 apache2 libapache2-mod-php5 php5-curl php5-gd php5-mcrypt php5-mysql php5-cli php-apc > /dev/null 2>&1

#enable mod rewrite
a2enmod rewrite > /dev/null 2>&1

#allow override all
sed -i "s/AllowOverride None/AllowOverride All/g" /etc/apache2/apache2.conf

#Enable PHP errors
sed -i "s/error_reporting = .*/error_reporting = E_ALL/" /etc/php5/apache2/php.ini
sed -i "s/display_errors = .*/display_errors = On/" /etc/php5/apache2/php.ini

<<<<<<< HEAD

#Add webmin to sources

sudo echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
sudo echo "deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib" >> /etc/apt/sources.list
wget http://www.webmin.com/jcameron-key.asc
sudo apt-key add jcameron-key.asc
sudo apt-get update
sudo apt-get -y install webmin





=======
#restart apache server after changes
sudo service apache2 restart

#Install webmin
#sudo apt-get -y install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python
#wget http://prdownloads.sourceforge.net/webadmin/webmin_1.770_all.deb
#sudo dpkg -i webmin_1.770_all.deb
>>>>>>> 36c4ec60ec085da4bd6b6591bf008e83e455982e
