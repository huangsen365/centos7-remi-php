RUN mv /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo.backup \
    && mv /etc/yum.repos.d/epel-testing.repo /etc/yum.repos.d/epel-testing.repo.backup \
    && wget -O /etc/yum.repos.d/epel.repo https://mirrors.aliyun.com/repo/epel-7.repo#
