sed -i 's/mirrorlist=http/#mirrorlist=http/g' /etc/yum.repos.d/CentOS-Base.repo
sed -i 's/# baseurl=http:\/\/mirror.centos.org/baseurl=https:\/\/mirrors.wansio.com/g' /etc/yum.repos.d/CentOS-Base.repo
sed -i 's/#baseurl=http:\/\/mirror.centos.org/baseurl=https:\/\/mirrors.wansio.com/g' /etc/yum.repos.d/CentOS-Base.repo

sed -i 's/mirrorlist=http/#mirrorlist=http/g' /etc/yum.repos.d/CentOS-SCLo-scl.repo
sed -i 's/# baseurl=http:\/\/mirror.centos.org\//baseurl=https:\/\/mirrors.wansio.com\//g' /etc/yum.repos.d/CentOS-SCLo-scl.repo
sed -i 's/#baseurl=http:\/\/mirror.centos.org\//baseurl=https:\/\/mirrors.wansio.com\//g' /etc/yum.repos.d/CentOS-SCLo-scl.repo

sed -i 's/mirrorlist=http/#mirrorlist=http/g' /etc/yum.repos.d/CentOS-SCLo-scl-rh.repo
sed -i 's/# baseurl=http:\/\/mirror.centos.org\//baseurl=https:\/\/mirrors.wansio.com\//g' /etc/yum.repos.d/CentOS-SCLo-scl-rh.repo
sed -i 's/#baseurl=http:\/\/mirror.centos.org\//baseurl=https:\/\/mirrors.wansio.com\//g' /etc/yum.repos.d/CentOS-SCLo-scl-rh.repo

sed -i 's/#baseurl=http:\/\/download.fedoraproject.org/baseurl=http:\/\/dl-fedoraproject-org.wansio.com/g' /etc/yum.repos.d/epel.repo
sed -i 's/metalink=https:\/\/mirrors.fedoraproject.org/\#metalink=https:\/\/mirrors-fedoraproject-org.wansio.com/g' /etc/yum.repos.d/epel.repo

sed -i 's/#baseurl=http:\/\/rpms.remirepo.net/baseurl=http:\/\/rpms-remirepo-net.wansio.com/g' /etc/yum.repos.d/remi-safe.repo
sed -i 's/mirrorlist=http:\/\/cdn.remirepo.net/\#mirrorlist=http:\/\/cdn-remirepo-net.wansio.com/g' /etc/yum.repos.d/remi-safe.repo
