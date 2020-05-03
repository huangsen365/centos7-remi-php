FROM centos:7

ENV container docker
MAINTAINER The CentOS Project <cloud-ops@centos.org>

RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;

VOLUME [ "/sys/fs/cgroup" ]

RUN sed -i 's/tsflags=nodocs/\#tsflags=nodocs/g' /etc/yum.conf
RUN echo "ip_resolve=4" >> /etc/yum.conf
RUN yum makecache fast
RUN yum -y update
RUN yum -y install man-pages man-db man yum-utils

RUN echo "export HISTSIZE=999999999" >> /etc/bashrc
RUN echo "export HISTTIMEFORMAT=\"%F %T \"" >> /etc/bashrc
RUN echo "export VISUAL=\"vim\"" >> /etc/bashrc
RUN echo "export EDITOR=\"vim\"" >> /etc/bashrc

RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

#RUN yum makecache fast

RUN yum -y --enablerepo=extras install centos-release-scl
RUN yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm

RUN yum -y install scl-utils
RUN yum -y install bzip2 \
cronie \
git \
htop \
httpd \
iftop \
logrotate \
mariadb-server \
mod_ssl \
mtr \
mysql \
net-tools \
nginx \
openssh-clients \
openssh-server \
redis \
rsync \
subversion \
sudo \
tcpdump \
telnet \
tmux \
unar \
unzip \
vim-enhanced \
wget \
zip \
zlib-devel

RUN useradd sshuser
RUN usermod -aG apache sshuser

# RUN rpm -v --import https://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro
# RUN rpm -Uvh https://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
# RUN yum -y install ffmpeg ffmpeg-devel

RUN yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm
RUN yum -y install php70 php71 php72 php73 php74 php70-php-fpm php71-php-fpm php72-php-fpm php73-php-fpm php74-php-fpm

COPY www_php-fpm_7000.conf /etc/opt/remi/php70/php-fpm.d/www.conf
COPY www_php-fpm_7100.conf /etc/opt/remi/php71/php-fpm.d/www.conf
COPY www_php-fpm_7200.conf /etc/opt/remi/php72/php-fpm.d/www.conf
COPY www_php-fpm_7300.conf /etc/opt/remi/php73/php-fpm.d/www.conf
COPY www_php-fpm_7400.conf /etc/opt/remi/php74/php-fpm.d/www.conf

COPY php-fpm_7001_www.yourdomain.com_NEW2.conf_template /etc/opt/remi/php70/php-fpm.d/php-fpm_7001_www.yourdomain.com_NEW2.conf_template
COPY php-fpm_7101_www.yourdomain.com_NEW2.conf_template /etc/opt/remi/php71/php-fpm.d/php-fpm_7101_www.yourdomain.com_NEW2.conf_template
COPY php-fpm_7201_www.yourdomain.com_NEW2.conf_template /etc/opt/remi/php72/php-fpm.d/php-fpm_7201_www.yourdomain.com_NEW2.conf_template
COPY php-fpm_7301_www.yourdomain.com_NEW2.conf_template /etc/opt/remi/php73/php-fpm.d/php-fpm_7301_www.yourdomain.com_NEW2.conf_template
COPY php-fpm_7401_www.yourdomain.com_NEW2.conf_template /etc/opt/remi/php74/php-fpm.d/php-fpm_7401_www.yourdomain.com_NEW2.conf_template

RUN sed -i 's/AllowOverride\ None/AllowOverride\ All/g' /etc/httpd/conf/httpd.conf
RUN echo "IncludeOptional conf2.d/*.conf" >> /etc/httpd/conf/httpd.conf

#COPY httpd_XX01_www.yourdomain.com.conf /tmp/httpd_XX01_www.yourdomain.com.conf

ADD somefiles_for_yum /tmp/somefiles_for_yum

# RUN yum -y install $(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php70.txt) --exclude=php70-php-pecl-rdkafka* --exclude=php70-php-oci8* --exclude=php70-php-pecl-swoole4* --exclude=php70-php-pecl-imagick* --exclude=php70-php-pecl-redis5* --exclude=php70-php-pecl-swoole2* --exclude=php70-php-pecl-redis4* --exclude=php70-php-yaconf* --exclude=php70-php-horde-horde-lz4* --exclude=vips-full* --exclude=php70-php-sqlsrv* --exclude=php70-php-smbclient* --exclude=php70-php-pecl-oci8* --exclude=php70-php-pecl-datadog-trace* --exclude=php70-php-pecl-uuid* --exclude=php70-php-pecl-stackdriver-debugger* --exclude=php70-php-suhosin* --exclude=php70-php-ioncube-loader*
# RUN yum -y install $(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php71.txt) --exclude=php71-php-pecl-redis5* --exclude=php71-php-pecl-redis4 --exclude=php71-php-pecl-imagick* --exclude=php71-php-sqlsrv* --exclude=php71-php-pecl-swoole4* --exclude=php71-php-pecl-gmagick* --exclude=php71-php-pecl-rdkafka* --exclude=php71-php-oci8* --exclude=php71-php-horde-horde-lz4* --exclude=php71-php-pecl-swoole2* --exclude=php71-php-smbclient* --exclude=php71-php-ioncube-loader* --exclude=php71-php-pecl-uopz* --exclude=php71-php-pecl-oci8* --exclude=php71-php-pecl-runkit7* --exclude=php71-php-pecl-stackdriver-debugger* --exclude=php71-php-pecl-seasclick*
# RUN yum -y install $(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php72.txt) --exclude=php72-php-pecl-redis4* --exclude=php72-php-pecl-gmagick* --exclude=php72-php-pecl-redis4* --exclude=php72-php-pecl-redis5* --exclude=php72-php-pecl-imagick* --exclude=php72-php-pecl-rdkafka* --exclude=php72-php-pecl-swoole4* --exclude=php72-php-pecl-swoole2* --exclude=php72-php-phalcon4* --exclude=php72-php-pecl-oci8* --exclude=php72-php-sqlsrv* --exclude=php72-php-pecl-handlebars* --exclude=php72-php-pecl-swoole* --exclude=php72-php-smbclient* --exclude=php72-php-oci8* --exclude=php72-php-pecl-oci8* --exclude=php72-php-ioncube-loader* --exclude=$(cat /tmp/somefiles/tmp_exclude.txt)
# RUN yum -y install $(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php73.txt) --exclude=php73-php-horde-horde* --exclude=php73-php-pecl-imagick* --exclude=php73-php-pecl-gmagick* --exclude=php73-php-pecl-rdkafka* --exclude=php73-php-phalcon4* --exclude=php73-php-pecl-redis5* --exclude=php73-php-pecl-oci8* --exclude=php73-php-oci8* --exclude=php73-php-sqlsrv* --exclude=php73-php-smbclient* --exclude=php73-php-ioncube-loader*
# RUN yum -y install $(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php74.txt) --exclude=php74-php-pecl-gmagick* --exclude=php74-php-pecl-imagick* --exclude=php74-php-sqlsrv* --exclude=php74-php-snuffleupagus* --exclude=php74-php-pecl-tcpwrap* --exclude=php74-php-snuffleupagus* --exclude=php74-php-horde-horde* --exclude=php74-php-smbclient* --exclude=php74-php-pecl-rdkafka* --exclude=php74-php-pecl-redis4* --exclude=php74-php-ioncube-loader*

RUN yum -y install $(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php70_defined.txt)
RUN yum -y install $(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php71_defined.txt)
RUN yum -y install $(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php72_defined.txt)
RUN yum -y install $(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php73_defined.txt)
RUN yum -y install $(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php74_defined.txt)

RUN yum -y install $(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php70_defined2.txt) --exclude="$(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php70_defined2-exclude.txt)"
RUN yum -y install $(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php71_defined2.txt) --exclude="$(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php71_defined2-exclude.txt)"
RUN yum -y install $(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php72_defined2.txt) --exclude="$(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php72_defined2-exclude.txt)"
RUN yum -y install $(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php73_defined2.txt) --exclude="$(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php73_defined2-exclude.txt)"
RUN yum -y install $(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php74_defined2.txt) --exclude="$(cat /tmp/somefiles_for_yum/yum_search_php_extensions_list_php74_defined2-exclude.txt)"

ADD somefiles /tmp/somefiles

#COPY vimrc_append_conf.txt /tmp
#RUN cat /tmp/somefiles/vimrc_append_conf.txt >> /etc/vimrc

#COPY mkdir_chown_chmod.sh /root/mkdir_chown_chmod.sh

#COPY mkdir.sh /tmp/mkdir.sh
RUN sh /tmp/somefiles/mkdir.sh
#COPY rsync.sh /tmp/rsync.sh
RUN sh /tmp/somefiles/rsync.sh

RUN sed -i 's/include\=\/etc\/opt\/remi\/php70\/php-fpm.d\/\*\.conf/include\=\/etc\/opt\/remi\/php70\/php-fpm.d\/\*\.conf\ninclude\=\/etc\/opt\/remi\/php70\/php-fpm2.d\/\*\.conf/g' /etc/opt/remi/php70/php-fpm.conf
RUN sed -i 's/include\=\/etc\/opt\/remi\/php71\/php-fpm.d\/\*\.conf/include\=\/etc\/opt\/remi\/php71\/php-fpm.d\/\*\.conf\ninclude\=\/etc\/opt\/remi\/php71\/php-fpm2.d\/\*\.conf/g' /etc/opt/remi/php71/php-fpm.conf
RUN sed -i 's/include\=\/etc\/opt\/remi\/php72\/php-fpm.d\/\*\.conf/include\=\/etc\/opt\/remi\/php72\/php-fpm.d\/\*\.conf\ninclude\=\/etc\/opt\/remi\/php72\/php-fpm2.d\/\*\.conf/g' /etc/opt/remi/php72/php-fpm.conf
RUN sed -i 's/include\=\/etc\/opt\/remi\/php73\/php-fpm.d\/\*\.conf/include\=\/etc\/opt\/remi\/php73\/php-fpm.d\/\*\.conf\ninclude\=\/etc\/opt\/remi\/php73\/php-fpm2.d\/\*\.conf/g' /etc/opt/remi/php73/php-fpm.conf
RUN sed -i 's/include\=\/etc\/opt\/remi\/php74\/php-fpm.d\/\*\.conf/include\=\/etc\/opt\/remi\/php74\/php-fpm.d\/\*\.conf\ninclude\=\/etc\/opt\/remi\/php74\/php-fpm2.d\/\*\.conf/g' /etc/opt/remi/php74/php-fpm.conf

RUN yum -y update
# RUN yum -y install tcpdump

RUN systemctl enable httpd.service; systemctl enable php70-php-fpm php71-php-fpm php72-php-fpm php73-php-fpm php74-php-fpm; systemctl enable sshd

EXPOSE 80 443

CMD ["/usr/sbin/init"]
