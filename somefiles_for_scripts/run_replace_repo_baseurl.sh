sed -i 's/mirrorlist=http/#mirrorlist=http/g' /etc/yum.repos.d/CentOS-Base.repo
sed -i 's/# baseurl=http:\/\/mirror.centos.org/baseurl=https:\/\/mirrors.wansio.com/g' /etc/yum.repos.d/CentOS-Base.repo
sed -i 's/#baseurl=http:\/\/mirror.centos.org/baseurl=https:\/\/mirrors.wansio.com/g' /etc/yum.repos.d/CentOS-Base.repo

sed -i 's/mirrorlist=http/#mirrorlist=http/g' /etc/yum.repos.d/CentOS-SCLo-scl.repo
sed -i 's/# baseurl=http:\/\/mirror.centos.org\//baseurl=https:\/\/mirrors.wansio.com\//g' /etc/yum.repos.d/CentOS-SCLo-scl.repo
sed -i 's/#baseurl=http:\/\/mirror.centos.org\//baseurl=https:\/\/mirrors.wansio.com\//g' /etc/yum.repos.d/CentOS-SCLo-scl.repo

sed -i 's/mirrorlist=http/#mirrorlist=http/g' /etc/yum.repos.d/CentOS-SCLo-scl-rh.repo
sed -i 's/# baseurl=http:\/\/mirror.centos.org\//baseurl=https:\/\/mirrors.wansio.com\//g' /etc/yum.repos.d/CentOS-SCLo-scl-rh.repo
sed -i 's/#baseurl=http:\/\/mirror.centos.org\//baseurl=https:\/\/mirrors.wansio.com\//g' /etc/yum.repos.d/CentOS-SCLo-scl-rh.repo
