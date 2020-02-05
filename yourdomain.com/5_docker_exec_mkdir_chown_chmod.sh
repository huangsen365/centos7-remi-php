docker exec centos7-remi-php-docker_yourdomain.com sh /root/mkdir_chown_chmod.sh
docker exec centos7-remi-php-docker_yourdomain.com cp -p /tmp/httpd_XX01_www.yourdomain.com.conf /etc/httpd/conf2.d/httpd_7201_www.yourdomain.com.conf
mkdir -p ./volumes/volume_yourdomain.com/var/www/www.yourdomain.com/www
echo "<?php phpinfo(); ?>" > ./volumes/volume_yourdomain.com/var/www/www.yourdomain.com/www/info.php
chown -R 1000:1000 ./volumes/volume_yourdomain.com/var/www/www.yourdomain.com
