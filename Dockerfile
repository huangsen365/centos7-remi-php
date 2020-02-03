FROM centos/systemd
RUN sed -i 's/tsflags=nodocs/\#tsflags=nodocs/g' /etc/yum.conf
RUN echo "ip_resolve=4" >> /etc/yum.conf
RUN yum -y update
RUN yum -y install man-pages man-db man

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

