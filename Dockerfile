FROM centos/systemd
RUN sed -i 's/tsflags=nodocs/\#tsflags=nodocs/g' /etc/yum.conf
RUN echo "ip_resolve=4" >> /etc/yum.conf
#RUN yum -y update
RUN yum -y install man-pages man-db man yum-utils

RUN echo "export HISTSIZE=999999999" >> /etc/bashrc
RUN echo "export HISTTIMEFORMAT=\"%F %T \"" >> /etc/bashrc
RUN echo "export VISUAL=\"vim\"" >> /etc/bashrc
RUN echo "export EDITOR=\"vim\"" >> /etc/bashrc

RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN yum makecache fast

RUN yum -y --enablerepo=extras install epel-release centos-release-scl
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
nginx \
openssh-clients \
openssh-server \
redis \
rsync \
subversion \
sudo \
telnet \
tmux \
unar \
unzip \
vim-enhanced \
wget \
zip \
zlib-devel

COPY vimrc_append_conf.txt /tmp
RUN cat /tmp/vimrc_append_conf.txt >> /etc/vimrc

RUN yum -y install https://rpms.remirepo.net/enterprise/remi-release-7.rpm

RUN yum -y install php70 php71 php72 php73 php74
RUN useradd sshuser
RUN usermod -aG apache sshuser

RUN rpm -v --import https://li.nux.ro/download/nux/RPM-GPG-KEY-nux.ro
RUN rpm -Uvh https://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
RUN yum install -y ffmpeg ffmpeg-devel

RUN sed -i 's/AllowOverride\ None/AllowOverride\ All/g' /etc/httpd/conf/httpd.conf

RUN yum -y install php70-php-fpm php71-php-fpm php72-php-fpm php73-php-fpm php74-php-fpm

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

COPY mkdir_chown_chmod.sh /root/mkdir_chown_chmod.sh

COPY mkdir.sh /tmp/mkdir.sh
RUN sh /tmp/mkdir.sh
COPY rsync.sh /tmp/rsync.sh
RUN sh /tmp/rsync.sh

RUN echo "IncludeOptional conf2.d/*.conf" >> /etc/httpd/conf/httpd.conf
RUN sed -i 's/include\=\/etc\/opt\/remi\/php70\/php-fpm.d\/\*\.conf/include\=\/etc\/opt\/remi\/php70\/php-fpm.d\/\*\.conf\ninclude\=\/etc\/opt\/remi\/php70\/php-fpm2.d\/\*\.conf/g' /etc/opt/remi/php70/php-fpm.conf
RUN echo 'include=/etc/opt/remi/php71/php-fpm2.d/*.conf' >> /etc/opt/remi/php71/php-fpm.conf
RUN echo 'include=/etc/opt/remi/php72/php-fpm2.d/*.conf' >> /etc/opt/remi/php72/php-fpm.conf
RUN echo 'include=/etc/opt/remi/php73/php-fpm2.d/*.conf' >> /etc/opt/remi/php73/php-fpm.conf
RUN echo 'include=/etc/opt/remi/php74/php-fpm2.d/*.conf' >> /etc/opt/remi/php74/php-fpm.conf

COPY httpd_XX01_www.yourdomain.com.conf /tmp/httpd_XX01_www.yourdomain.com.conf

RUN systemctl enable httpd.service; systemctl enable php70-php-fpm php71-php-fpm php72-php-fpm php73-php-fpm php74-php-fpm; systemctl enable sshd

EXPOSE 80 443

CMD ["/usr/sbin/init"]