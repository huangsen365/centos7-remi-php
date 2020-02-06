docker exec centos7-remi-php-docker_yourdomain.com sh /root/mkdir_chown_chmod.sh
docker exec centos7-remi-php-docker_yourdomain.com cp -p /tmp/httpd_XX01_www.yourdomain.com.conf /etc/httpd/conf2.d/httpd_7201_www.yourdomain.com.conf
docker exec centos7-remi-php-docker_yourdomain.com cp -p /etc/opt/remi/php70/php-fpm.d/php-fpm_7001_www.yourdomain.com_NEW2.conf_template /etc/opt/remi/php70/php-fpm2.d/php-fpm_7001_www.yourdomain.com_NEW2.conf
docker exec centos7-remi-php-docker_yourdomain.com cp -p /etc/opt/remi/php71/php-fpm.d/php-fpm_7101_www.yourdomain.com_NEW2.conf_template /etc/opt/remi/php71/php-fpm2.d/php-fpm_7101_www.yourdomain.com_NEW2.conf
docker exec centos7-remi-php-docker_yourdomain.com cp -p /etc/opt/remi/php72/php-fpm.d/php-fpm_7201_www.yourdomain.com_NEW2.conf_template /etc/opt/remi/php72/php-fpm2.d/php-fpm_7201_www.yourdomain.com_NEW2.conf
docker exec centos7-remi-php-docker_yourdomain.com cp -p /etc/opt/remi/php73/php-fpm.d/php-fpm_7301_www.yourdomain.com_NEW2.conf_template /etc/opt/remi/php73/php-fpm2.d/php-fpm_7301_www.yourdomain.com_NEW2.conf
docker exec centos7-remi-php-docker_yourdomain.com cp -p /etc/opt/remi/php74/php-fpm.d/php-fpm_7401_www.yourdomain.com_NEW2.conf_template /etc/opt/remi/php74/php-fpm2.d/php-fpm_7401_www.yourdomain.com_NEW2.conf
mkdir -p ./volumes/volume_yourdomain.com/var/www/www.yourdomain.com/www
cp ../info.php ./volumes/volume_yourdomain.com/var/www/www.yourdomain.com/www/info.php
cp ../gitpull.php ./volumes/volume_yourdomain.com/var/www/www.yourdomain.com/www/gitpull.php
cp ../gitpull.sh ./volumes/volume_yourdomain.com/var/www/www.yourdomain.com/gitpull.sh
chown -R 1000:1000 ./volumes/volume_yourdomain.com/var/www/www.yourdomain.com
