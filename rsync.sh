rsync -av /home/ /tmp/default_paths_for_docker/home/
rsync -av /root/ /tmp/default_paths_for_docker/root/
rsync -av /var/www/ /tmp/default_paths_for_docker/var/www/
rsync -av /var/log/ /tmp/default_paths_for_docker/var/log/
rsync -av /etc/httpd/conf.d/ --exclude '*' /tmp/default_paths_for_docker/etc/httpd/conf2.d/
# rsync -av /tmp/httpd_XX01_www.yourdomain.com.conf /tmp/default_paths_for_docker/etc/httpd/conf2.d/
rsync -av /etc/opt/remi/php70/php-fpm.d/ --exclude '*' /tmp/default_paths_for_docker/etc/opt/remi/php70/php-fpm2.d/
rsync -av /etc/opt/remi/php71/php-fpm.d/ --exclude '*' /tmp/default_paths_for_docker/etc/opt/remi/php71/php-fpm2.d/
rsync -av /etc/opt/remi/php72/php-fpm.d/ --exclude '*' /tmp/default_paths_for_docker/etc/opt/remi/php72/php-fpm2.d/
rsync -av /etc/opt/remi/php73/php-fpm.d/ --exclude '*' /tmp/default_paths_for_docker/etc/opt/remi/php73/php-fpm2.d/
rsync -av /etc/opt/remi/php74/php-fpm.d/ --exclude '*' /tmp/default_paths_for_docker/etc/opt/remi/php74/php-fpm2.d/

rsync -av /var/opt/remi/php70/lib/php/opcache/ /tmp/default_paths_for_docker/var/opt/remi/php70/lib/php/opcache/
rsync -av /var/opt/remi/php70/lib/php/session/ /tmp/default_paths_for_docker/var/opt/remi/php70/lib/php/session/
rsync -av /var/opt/remi/php70/lib/php/wsdlcache/ /tmp/default_paths_for_docker/var/opt/remi/php70/lib/php/wsdlcache/
rsync -av /var/opt/remi/php71/lib/php/opcache/ /tmp/default_paths_for_docker/var/opt/remi/php71/lib/php/opcache/
rsync -av /var/opt/remi/php71/lib/php/session/ /tmp/default_paths_for_docker/var/opt/remi/php71/lib/php/session/
rsync -av /var/opt/remi/php71/lib/php/wsdlcache/ /tmp/default_paths_for_docker/var/opt/remi/php71/lib/php/wsdlcache/
rsync -av /var/opt/remi/php72/lib/php/opcache/ /tmp/default_paths_for_docker/var/opt/remi/php72/lib/php/opcache/
rsync -av /var/opt/remi/php72/lib/php/session/ /tmp/default_paths_for_docker/var/opt/remi/php72/lib/php/session/
rsync -av /var/opt/remi/php72/lib/php/wsdlcache/ /tmp/default_paths_for_docker/var/opt/remi/php72/lib/php/wsdlcache/
rsync -av /var/opt/remi/php73/lib/php/opcache/ /tmp/default_paths_for_docker/var/opt/remi/php73/lib/php/opcache/
rsync -av /var/opt/remi/php73/lib/php/session/ /tmp/default_paths_for_docker/var/opt/remi/php73/lib/php/session/
rsync -av /var/opt/remi/php73/lib/php/wsdlcache/ /tmp/default_paths_for_docker/var/opt/remi/php73/lib/php/wsdlcache/
rsync -av /var/opt/remi/php74/lib/php/opcache/ /tmp/default_paths_for_docker/var/opt/remi/php74/lib/php/opcache/
rsync -av /var/opt/remi/php74/lib/php/session/ /tmp/default_paths_for_docker/var/opt/remi/php74/lib/php/session/
rsync -av /var/opt/remi/php74/lib/php/wsdlcache/ /tmp/default_paths_for_docker/var/opt/remi/php74/lib/php/wsdlcache/


rsync -av /tmp/default_paths_for_docker/var/opt/remi/php70/lib/php/opcache/ /var/opt/remi/php70/lib/php/opcache/www.yourdomain.com/
rsync -av /tmp/default_paths_for_docker/var/opt/remi/php70/lib/php/session/ /var/opt/remi/php70/lib/php/session/www.yourdomain.com/
rsync -av /tmp/default_paths_for_docker/var/opt/remi/php70/lib/php/wsdlcache/ /var/opt/remi/php70/lib/php/wsdlcache/www.yourdomain.com/
rsync -av /tmp/default_paths_for_docker/var/opt/remi/php71/lib/php/opcache/ /var/opt/remi/php71/lib/php/opcache/www.yourdomain.com/
rsync -av /tmp/default_paths_for_docker/var/opt/remi/php71/lib/php/session/ /var/opt/remi/php71/lib/php/session/www.yourdomain.com/
rsync -av /tmp/default_paths_for_docker/var/opt/remi/php71/lib/php/wsdlcache/ /var/opt/remi/php71/lib/php/wsdlcache/www.yourdomain.com/
rsync -av /tmp/default_paths_for_docker/var/opt/remi/php72/lib/php/opcache/ /var/opt/remi/php72/lib/php/opcache/www.yourdomain.com/
rsync -av /tmp/default_paths_for_docker/var/opt/remi/php72/lib/php/session/ /var/opt/remi/php72/lib/php/session/www.yourdomain.com/
rsync -av /tmp/default_paths_for_docker/var/opt/remi/php72/lib/php/wsdlcache/ /var/opt/remi/php72/lib/php/wsdlcache/www.yourdomain.com/
rsync -av /tmp/default_paths_for_docker/var/opt/remi/php73/lib/php/opcache/ /var/opt/remi/php73/lib/php/opcache/www.yourdomain.com/
rsync -av /tmp/default_paths_for_docker/var/opt/remi/php73/lib/php/session/ /var/opt/remi/php73/lib/php/session/www.yourdomain.com/
rsync -av /tmp/default_paths_for_docker/var/opt/remi/php73/lib/php/wsdlcache/ /var/opt/remi/php73/lib/php/wsdlcache/www.yourdomain.com/
rsync -av /tmp/default_paths_for_docker/var/opt/remi/php74/lib/php/opcache/ /var/opt/remi/php74/lib/php/opcache/www.yourdomain.com/
rsync -av /tmp/default_paths_for_docker/var/opt/remi/php74/lib/php/session/ /var/opt/remi/php74/lib/php/session/www.yourdomain.com/
rsync -av /tmp/default_paths_for_docker/var/opt/remi/php74/lib/php/wsdlcache/ /var/opt/remi/php74/lib/php/wsdlcache/www.yourdomain.com/


rsync -av /var/opt/remi/php70/lib/php/opcache/ /tmp/default_paths_for_docker/var/opt/remi/php70/lib/php/opcache/
rsync -av /var/opt/remi/php70/lib/php/session/ /tmp/default_paths_for_docker/var/opt/remi/php70/lib/php/session/
rsync -av /var/opt/remi/php70/lib/php/wsdlcache/ /tmp/default_paths_for_docker/var/opt/remi/php70/lib/php/wsdlcache/
rsync -av /var/opt/remi/php71/lib/php/opcache/ /tmp/default_paths_for_docker/var/opt/remi/php71/lib/php/opcache/
rsync -av /var/opt/remi/php71/lib/php/session/ /tmp/default_paths_for_docker/var/opt/remi/php71/lib/php/session/
rsync -av /var/opt/remi/php71/lib/php/wsdlcache/ /tmp/default_paths_for_docker/var/opt/remi/php71/lib/php/wsdlcache/
rsync -av /var/opt/remi/php72/lib/php/opcache/ /tmp/default_paths_for_docker/var/opt/remi/php72/lib/php/opcache/
rsync -av /var/opt/remi/php72/lib/php/session/ /tmp/default_paths_for_docker/var/opt/remi/php72/lib/php/session/
rsync -av /var/opt/remi/php72/lib/php/wsdlcache/ /tmp/default_paths_for_docker/var/opt/remi/php72/lib/php/wsdlcache/
rsync -av /var/opt/remi/php73/lib/php/opcache/ /tmp/default_paths_for_docker/var/opt/remi/php73/lib/php/opcache/
rsync -av /var/opt/remi/php73/lib/php/session/ /tmp/default_paths_for_docker/var/opt/remi/php73/lib/php/session/
rsync -av /var/opt/remi/php73/lib/php/wsdlcache/ /tmp/default_paths_for_docker/var/opt/remi/php73/lib/php/wsdlcache/
rsync -av /var/opt/remi/php74/lib/php/opcache/ /tmp/default_paths_for_docker/var/opt/remi/php74/lib/php/opcache/
rsync -av /var/opt/remi/php74/lib/php/session/ /tmp/default_paths_for_docker/var/opt/remi/php74/lib/php/session/
rsync -av /var/opt/remi/php74/lib/php/wsdlcache/ /tmp/default_paths_for_docker/var/opt/remi/php74/lib/php/wsdlcache/
