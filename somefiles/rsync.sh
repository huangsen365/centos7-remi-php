ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
useradd sshuser
usermod -aG apache sshuser

sed -i 's/AllowOverride\ None/AllowOverride\ All/g' /etc/httpd/conf/httpd.conf
echo "IncludeOptional conf2.d/*.conf" >> /etc/httpd/conf/httpd.conf

rsync -av /home/ /opt/centos7-remi-php/default_paths_for_docker/home/
rsync -av /root/ /opt/centos7-remi-php/default_paths_for_docker/root/
rsync -av /var/www/ /opt/centos7-remi-php/default_paths_for_docker/var/www/
rsync -av /var/log/ /opt/centos7-remi-php/default_paths_for_docker/var/log/

rsync -av /etc/httpd/conf.d/ --exclude '*' /opt/centos7-remi-php/default_paths_for_docker/etc/httpd/conf2.d/
rsync -av /opt/centos7-remi-php/somefiles/httpd_XX01_www.yourdomain.com.conf /opt/centos7-remi-php/default_paths_for_docker/etc/httpd/conf2.d/httpd_XX01_www.yourdomain.com.conf_template
rsync -av /opt/centos7-remi-php/somefiles/info.php /opt/centos7-remi-php/default_paths_for_docker/var/www/www.yourdomain.com/www/info.php
rsync -av /opt/centos7-remi-php/somefiles/gitpull.sh /opt/centos7-remi-php/default_paths_for_docker/var/www/www.yourdomain.com/gitpull.sh
rsync -av /opt/centos7-remi-php/somefiles/gitpull.php /opt/centos7-remi-php/default_paths_for_docker/var/www/www.yourdomain.com/www/gitpull.php
rsync -av /opt/centos7-remi-php/somefiles/.gitignore_template /opt/centos7-remi-php/default_paths_for_docker/var/www/www.yourdomain.com/.gitignore_template
rsync -av /opt/centos7-remi-php/somefiles/mkdir_chown_chmod.sh /opt/centos7-remi-php/default_paths_for_docker/root/mkdir_chown_chmod.sh

chown -R 1000:1000 /opt/centos7-remi-php/default_paths_for_docker/var/www/www.yourdomain.com
cat /opt/centos7-remi-php/somefiles/vimrc_append_conf.txt >> /etc/vimrc
cat /opt/centos7-remi-php/somefiles/bashrc_append.txt >> /etc/bashrc


rsync -av /opt/remi/php54/root/etc/php-fpm.d/ --exclude '*' /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php54/root/etc/php-fpm2.d/
rsync -av /opt/remi/php54/root/etc/php-fpm.d/php-fpm_5401_www.yourdomain.com_NEW2.conf_template /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php54/root/etc/php-fpm2.d/php-fpm_5401_www.yourdomain.com_NEW2.conf
rsync -av /opt/remi/php55/root/etc/php-fpm.d/ --exclude '*' /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php55/root/etc/php-fpm2.d/
rsync -av /opt/remi/php55/root/etc/php-fpm.d/php-fpm_5501_www.yourdomain.com_NEW2.conf_template /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php55/root/etc/php-fpm2.d/php-fpm_5501_www.yourdomain.com_NEW2.conf
rsync -av /opt/remi/php56/root/etc/php-fpm.d/ --exclude '*' /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php56/root/etc/php-fpm2.d/
rsync -av /opt/remi/php56/root/etc/php-fpm.d/php-fpm_5601_www.yourdomain.com_NEW2.conf_template /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php56/root/etc/php-fpm2.d/php-fpm_5601_www.yourdomain.com_NEW2.conf
rsync -av /etc/opt/remi/php70/php-fpm.d/ --exclude '*' /opt/centos7-remi-php/default_paths_for_docker/etc/opt/remi/php70/php-fpm2.d/
rsync -av /etc/opt/remi/php70/php-fpm.d/php-fpm_7001_www.yourdomain.com_NEW2.conf_template /opt/centos7-remi-php/default_paths_for_docker/etc/opt/remi/php70/php-fpm2.d/php-fpm_7001_www.yourdomain.com_NEW2.conf
rsync -av /etc/opt/remi/php71/php-fpm.d/ --exclude '*' /opt/centos7-remi-php/default_paths_for_docker/etc/opt/remi/php71/php-fpm2.d/
rsync -av /etc/opt/remi/php71/php-fpm.d/php-fpm_7101_www.yourdomain.com_NEW2.conf_template /opt/centos7-remi-php/default_paths_for_docker/etc/opt/remi/php71/php-fpm2.d/php-fpm_7101_www.yourdomain.com_NEW2.conf
rsync -av /etc/opt/remi/php72/php-fpm.d/ --exclude '*' /opt/centos7-remi-php/default_paths_for_docker/etc/opt/remi/php72/php-fpm2.d/
rsync -av /etc/opt/remi/php72/php-fpm.d/php-fpm_7201_www.yourdomain.com_NEW2.conf_template /opt/centos7-remi-php/default_paths_for_docker/etc/opt/remi/php72/php-fpm2.d/php-fpm_7201_www.yourdomain.com_NEW2.conf
rsync -av /etc/opt/remi/php73/php-fpm.d/ --exclude '*' /opt/centos7-remi-php/default_paths_for_docker/etc/opt/remi/php73/php-fpm2.d/
rsync -av /etc/opt/remi/php73/php-fpm.d/php-fpm_7301_www.yourdomain.com_NEW2.conf_template /opt/centos7-remi-php/default_paths_for_docker/etc/opt/remi/php73/php-fpm2.d/php-fpm_7301_www.yourdomain.com_NEW2.conf
rsync -av /etc/opt/remi/php74/php-fpm.d/ --exclude '*' /opt/centos7-remi-php/default_paths_for_docker/etc/opt/remi/php74/php-fpm2.d/
rsync -av /etc/opt/remi/php74/php-fpm.d/php-fpm_7401_www.yourdomain.com_NEW2.conf_template /opt/centos7-remi-php/default_paths_for_docker/etc/opt/remi/php74/php-fpm2.d/php-fpm_7401_www.yourdomain.com_NEW2.conf



#rsync -av /opt/remi/php54/root/var/lib/php/opcache/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php54/root/var/lib/php/opcache/
rsync -av /opt/remi/php54/root/var/lib/php/session/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php54/root/var/lib/php/session/
rsync -av /opt/remi/php54/root/var/lib/php/wsdlcache/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php54/root/var/lib/php/wsdlcache/
#rsync -av /opt/remi/php55/root/var/lib/php/opcache/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php55/root/var/lib/php/opcache/
rsync -av /opt/remi/php55/root/var/lib/php/session/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php55/root/var/lib/php/session/
rsync -av /opt/remi/php55/root/var/lib/php/wsdlcache/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php55/root/var/lib/php/wsdlcache/
#rsync -av /opt/remi/php56/root/var/lib/php/opcache/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php56/root/var/lib/php/opcache/
rsync -av /opt/remi/php56/root/var/lib/php/session/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php56/root/var/lib/php/session/
rsync -av /opt/remi/php56/root/var/lib/php/wsdlcache/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php56/root/var/lib/php/wsdlcache/
rsync -av /var/opt/remi/php70/lib/php/opcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php70/lib/php/opcache/
rsync -av /var/opt/remi/php70/lib/php/session/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php70/lib/php/session/
rsync -av /var/opt/remi/php70/lib/php/wsdlcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php70/lib/php/wsdlcache/
rsync -av /var/opt/remi/php71/lib/php/opcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php71/lib/php/opcache/
rsync -av /var/opt/remi/php71/lib/php/session/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php71/lib/php/session/
rsync -av /var/opt/remi/php71/lib/php/wsdlcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php71/lib/php/wsdlcache/
rsync -av /var/opt/remi/php72/lib/php/opcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php72/lib/php/opcache/
rsync -av /var/opt/remi/php72/lib/php/session/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php72/lib/php/session/
rsync -av /var/opt/remi/php72/lib/php/wsdlcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php72/lib/php/wsdlcache/
rsync -av /var/opt/remi/php73/lib/php/opcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php73/lib/php/opcache/
rsync -av /var/opt/remi/php73/lib/php/session/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php73/lib/php/session/
rsync -av /var/opt/remi/php73/lib/php/wsdlcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php73/lib/php/wsdlcache/
rsync -av /var/opt/remi/php74/lib/php/opcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php74/lib/php/opcache/
rsync -av /var/opt/remi/php74/lib/php/session/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php74/lib/php/session/
rsync -av /var/opt/remi/php74/lib/php/wsdlcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php74/lib/php/wsdlcache/



#rsync -av /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php54/root/var/lib/php/opcache/ /opt/remi/php54/root/var/lib/php/opcache/www.yourdomain.com/
rsync -av /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php54/root/var/lib/php/session/ /opt/remi/php54/root/var/lib/php/session/www.yourdomain.com/
rsync -av /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php54/root/var/lib/php/wsdlcache/ /opt/remi/php54/root/var/lib/php/wsdlcache/www.yourdomain.com/
#touch /opt/remi/php54/root/var/lib/php/opcache/www.yourdomain.com/.keep
touch /opt/remi/php54/root/var/lib/php/session/www.yourdomain.com/.keep
touch /opt/remi/php54/root/var/lib/php/wsdlcache/www.yourdomain.com/.keep
#rsync -av /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php55/root/var/lib/php/opcache/ /opt/remi/php55/root/var/lib/php/opcache/www.yourdomain.com/
rsync -av /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php55/root/var/lib/php/session/ /opt/remi/php55/root/var/lib/php/session/www.yourdomain.com/
rsync -av /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php55/root/var/lib/php/wsdlcache/ /opt/remi/php55/root/var/lib/php/wsdlcache/www.yourdomain.com/
#touch /opt/remi/php55/root/var/lib/php/opcache/www.yourdomain.com/.keep
touch /opt/remi/php55/root/var/lib/php/session/www.yourdomain.com/.keep
touch /opt/remi/php55/root/var/lib/php/wsdlcache/www.yourdomain.com/.keep
#rsync -av /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php56/root/var/lib/php/opcache/ /opt/remi/php56/root/var/lib/php/opcache/www.yourdomain.com/
rsync -av /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php56/root/var/lib/php/session/ /opt/remi/php56/root/var/lib/php/session/www.yourdomain.com/
rsync -av /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php56/root/var/lib/php/wsdlcache/ /opt/remi/php56/root/var/lib/php/wsdlcache/www.yourdomain.com/
#touch /opt/remi/php56/root/var/lib/php/opcache/www.yourdomain.com/.keep
touch /opt/remi/php56/root/var/lib/php/session/www.yourdomain.com/.keep
touch /opt/remi/php56/root/var/lib/php/wsdlcache/www.yourdomain.com/.keep
rsync -av /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php70/lib/php/opcache/ /var/opt/remi/php70/lib/php/opcache/www.yourdomain.com/
rsync -av /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php70/lib/php/session/ /var/opt/remi/php70/lib/php/session/www.yourdomain.com/
rsync -av /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php70/lib/php/wsdlcache/ /var/opt/remi/php70/lib/php/wsdlcache/www.yourdomain.com/
touch /var/opt/remi/php70/lib/php/opcache/www.yourdomain.com/.keep
touch /var/opt/remi/php70/lib/php/session/www.yourdomain.com/.keep
touch /var/opt/remi/php70/lib/php/wsdlcache/www.yourdomain.com/.keep
rsync -av /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php71/lib/php/opcache/ /var/opt/remi/php71/lib/php/opcache/www.yourdomain.com/
rsync -av /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php71/lib/php/session/ /var/opt/remi/php71/lib/php/session/www.yourdomain.com/
rsync -av /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php71/lib/php/wsdlcache/ /var/opt/remi/php71/lib/php/wsdlcache/www.yourdomain.com/
touch /var/opt/remi/php71/lib/php/opcache/www.yourdomain.com/.keep
touch /var/opt/remi/php71/lib/php/session/www.yourdomain.com/.keep
touch /var/opt/remi/php71/lib/php/wsdlcache/www.yourdomain.com/.keep
rsync -av /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php72/lib/php/opcache/ /var/opt/remi/php72/lib/php/opcache/www.yourdomain.com/
rsync -av /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php72/lib/php/session/ /var/opt/remi/php72/lib/php/session/www.yourdomain.com/
rsync -av /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php72/lib/php/wsdlcache/ /var/opt/remi/php72/lib/php/wsdlcache/www.yourdomain.com/
touch /var/opt/remi/php72/lib/php/opcache/www.yourdomain.com/.keep
touch /var/opt/remi/php72/lib/php/session/www.yourdomain.com/.keep
touch /var/opt/remi/php72/lib/php/wsdlcache/www.yourdomain.com/.keep
rsync -av /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php73/lib/php/opcache/ /var/opt/remi/php73/lib/php/opcache/www.yourdomain.com/
rsync -av /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php73/lib/php/session/ /var/opt/remi/php73/lib/php/session/www.yourdomain.com/
rsync -av /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php73/lib/php/wsdlcache/ /var/opt/remi/php73/lib/php/wsdlcache/www.yourdomain.com/
touch /var/opt/remi/php73/lib/php/opcache/www.yourdomain.com/.keep
touch /var/opt/remi/php73/lib/php/session/www.yourdomain.com/.keep
touch /var/opt/remi/php73/lib/php/wsdlcache/www.yourdomain.com/.keep
rsync -av /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php74/lib/php/opcache/ /var/opt/remi/php74/lib/php/opcache/www.yourdomain.com/
rsync -av /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php74/lib/php/session/ /var/opt/remi/php74/lib/php/session/www.yourdomain.com/
rsync -av /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php74/lib/php/wsdlcache/ /var/opt/remi/php74/lib/php/wsdlcache/www.yourdomain.com/
touch /var/opt/remi/php74/lib/php/opcache/www.yourdomain.com/.keep
touch /var/opt/remi/php74/lib/php/session/www.yourdomain.com/.keep
touch /var/opt/remi/php74/lib/php/wsdlcache/www.yourdomain.com/.keep







#rsync -av /opt/remi/php54/root/var/lib/php/opcache/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php54/root/var/lib/php/opcache/
rsync -av /opt/remi/php54/root/var/lib/php/session/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php54/root/var/lib/php/session/
rsync -av /opt/remi/php54/root/var/lib/php/wsdlcache/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php54/root/var/lib/php/wsdlcache/
#rsync -av /opt/remi/php55/root/var/lib/php/opcache/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php55/root/var/lib/php/opcache/
rsync -av /opt/remi/php55/root/var/lib/php/session/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php55/root/var/lib/php/session/
rsync -av /opt/remi/php55/root/var/lib/php/wsdlcache/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php55/root/var/lib/php/wsdlcache/
#rsync -av /opt/remi/php56/root/var/lib/php/opcache/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php56/root/var/lib/php/opcache/
rsync -av /opt/remi/php56/root/var/lib/php/session/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php56/root/var/lib/php/session/
rsync -av /opt/remi/php56/root/var/lib/php/wsdlcache/ /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php56/root/var/lib/php/wsdlcache/
rsync -av /var/opt/remi/php70/lib/php/opcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php70/lib/php/opcache/
rsync -av /var/opt/remi/php70/lib/php/session/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php70/lib/php/session/
rsync -av /var/opt/remi/php70/lib/php/wsdlcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php70/lib/php/wsdlcache/
rsync -av /var/opt/remi/php71/lib/php/opcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php71/lib/php/opcache/
rsync -av /var/opt/remi/php71/lib/php/session/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php71/lib/php/session/
rsync -av /var/opt/remi/php71/lib/php/wsdlcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php71/lib/php/wsdlcache/
rsync -av /var/opt/remi/php72/lib/php/opcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php72/lib/php/opcache/
rsync -av /var/opt/remi/php72/lib/php/session/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php72/lib/php/session/
rsync -av /var/opt/remi/php72/lib/php/wsdlcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php72/lib/php/wsdlcache/
rsync -av /var/opt/remi/php73/lib/php/opcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php73/lib/php/opcache/
rsync -av /var/opt/remi/php73/lib/php/session/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php73/lib/php/session/
rsync -av /var/opt/remi/php73/lib/php/wsdlcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php73/lib/php/wsdlcache/
rsync -av /var/opt/remi/php74/lib/php/opcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php74/lib/php/opcache/
rsync -av /var/opt/remi/php74/lib/php/session/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php74/lib/php/session/
rsync -av /var/opt/remi/php74/lib/php/wsdlcache/ /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php74/lib/php/wsdlcache/




rsync -av /var/spool/cron/ /opt/centos7-remi-php/default_paths_for_docker/var/spool/cron/
