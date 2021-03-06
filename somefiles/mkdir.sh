mkdir -p /opt/centos7-remi-php/default_paths_for_docker/home
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/home/sshuser/.ssh
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/home/sshuser/dotfiles
chmod 700 /opt/centos7-remi-php/default_paths_for_docker/home/sshuser/.ssh
chown 1000:1000 /opt/centos7-remi-php/default_paths_for_docker/home/sshuser/.ssh
chown 1000:1000 /opt/centos7-remi-php/default_paths_for_docker/home/sshuser/dotfiles
echo "ln -sf ./dotfiles/.gitconfig .gitconfig" > /opt/centos7-remi-php/default_paths_for_docker/home/sshuser/ln_gitconfig.sh
chown 1000:1000 /opt/centos7-remi-php/default_paths_for_docker/home/sshuser/ln_gitconfig.sh
#touch /opt/centos7-remi-php/default_paths_for_docker/home/sshuser/.gitconfig
#chown 1000:1000 /opt/centos7-remi-php/default_paths_for_docker/home/sshuser/.gitconfig

mkdir -p /opt/centos7-remi-php/default_paths_for_docker/root
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/root/.ssh
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/root/shared
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/root/dotfiles
chmod 700 /opt/centos7-remi-php/default_paths_for_docker/root/.ssh
echo "ln -sf ./dotfiles/.gitconfig .gitconfig" > /opt/centos7-remi-php/default_paths_for_docker/root/ln_gitconfig.sh
#chmod 755 /opt/centos7-remi-php/default_paths_for_docker/root/shared
#chmod 755 /opt/centos7-remi-php/default_paths_for_docker/root/dotfiles
#touch /opt/centos7-remi-php/default_paths_for_docker/root/.gitconfig

mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/www
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/log
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/cache/yum
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/etc/httpd/conf2.d
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/www/www.yourdomain.com/www




#mkdir -p /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php54/root/var/lib/php/opcache
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php54/root/var/lib/php/session
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php54/root/var/lib/php/wsdlcache

#mkdir -p /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php55/root/var/lib/php/opcache
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php55/root/var/lib/php/session
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php55/root/var/lib/php/wsdlcache

#mkdir -p /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php56/root/var/lib/php/opcache
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php56/root/var/lib/php/session
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php56/root/var/lib/php/wsdlcache

mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php70/lib/php/opcache
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php70/lib/php/session
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php70/lib/php/wsdlcache

mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php71/lib/php/opcache
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php71/lib/php/session
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php71/lib/php/wsdlcache

mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php72/lib/php/opcache
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php72/lib/php/session
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php72/lib/php/wsdlcache

mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php73/lib/php/opcache
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php73/lib/php/session
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php73/lib/php/wsdlcache

mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php74/lib/php/opcache
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php74/lib/php/session
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/opt/remi/php74/lib/php/wsdlcache



mkdir -p /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php54/root/etc/php-fpm2.d
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php55/root/etc/php-fpm2.d
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/opt/remi/php56/root/etc/php-fpm2.d
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/etc/opt/remi/php70/php-fpm2.d
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/etc/opt/remi/php71/php-fpm2.d
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/etc/opt/remi/php72/php-fpm2.d
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/etc/opt/remi/php73/php-fpm2.d
mkdir -p /opt/centos7-remi-php/default_paths_for_docker/etc/opt/remi/php74/php-fpm2.d


mkdir -p /opt/centos7-remi-php/default_paths_for_docker/var/spool/cron
