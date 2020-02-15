current_dir=$(pwd)
#httpd_log_dir_name=httpd_$(date +%Y-%m-%d_%H%M%S)_$(hostname)
#cp -pr $current_dir/volumes/volume_yourdomain.com/var/log/httpd $current_dir/volumes/volume_yourdomain.com/var/log/$httpd_log_dir_name
date_and_hostname=$(date +%Y-%m-%d_%H%M%S)_$(hostname)
home_dir_name=home_$date_and_hostname
root_dir_name=root_$date_and_hostname
log_dir_name=log_$date_and_hostname
cotainer_name=c_$date_and_hostname
cp -pr $current_dir/volumes/volume_yourdomain.com/home $current_dir/volumes/volume_yourdomain.com/$home_dir_name
cp -pr $current_dir/volumes/volume_yourdomain.com/root $current_dir/volumes/volume_yourdomain.com/$root_dir_name
cp -pr $current_dir/volumes/volume_yourdomain.com/var/log $current_dir/volumes/volume_yourdomain.com/var/$log_dir_name

docker run -d \
  --privileged \
  -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
  -v $current_dir/volumes/volume_yourdomain.com/$home_dir_name:/home \
  -v $current_dir/volumes/volume_yourdomain.com/$root_dir_name:/root \
  -v $current_dir/volumes/volume_yourdomain.com/var/www:/var/www \
  -v $current_dir/volumes/volume_yourdomain.com/var/$log_dir_name:/var/log \
  -v $current_dir/volumes/volume_yourdomain.com/etc/httpd/conf2.d:/etc/httpd/conf2.d \
  -v $current_dir/volumes/volume_yourdomain.com/var/opt/remi/php70/lib/php:/var/opt/remi/php70/lib/php \
  -v $current_dir/volumes/volume_yourdomain.com/var/opt/remi/php71/lib/php:/var/opt/remi/php71/lib/php \
  -v $current_dir/volumes/volume_yourdomain.com/var/opt/remi/php72/lib/php:/var/opt/remi/php72/lib/php \
  -v $current_dir/volumes/volume_yourdomain.com/var/opt/remi/php73/lib/php:/var/opt/remi/php73/lib/php \
  -v $current_dir/volumes/volume_yourdomain.com/var/opt/remi/php74/lib/php:/var/opt/remi/php74/lib/php \
  -v $current_dir/volumes/volume_yourdomain.com/etc/opt/remi/php70/php-fpm2.d:/etc/opt/remi/php70/php-fpm2.d \
  -v $current_dir/volumes/volume_yourdomain.com/etc/opt/remi/php71/php-fpm2.d:/etc/opt/remi/php71/php-fpm2.d \
  -v $current_dir/volumes/volume_yourdomain.com/etc/opt/remi/php72/php-fpm2.d:/etc/opt/remi/php72/php-fpm2.d \
  -v $current_dir/volumes/volume_yourdomain.com/etc/opt/remi/php73/php-fpm2.d:/etc/opt/remi/php73/php-fpm2.d \
  -v $current_dir/volumes/volume_yourdomain.com/etc/opt/remi/php74/php-fpm2.d:/etc/opt/remi/php74/php-fpm2.d \
  -p 8080:80 \
  -p 8443:443 \
  -p 8222:22 \
  --restart always \
  --name $cotainer_name \
  centos7-remi-php
