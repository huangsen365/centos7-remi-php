# centos7-remi-php
CentOS 7 Remi php Docker image

OS 操作系统: CentOS 7

Web 引擎: Apache (httpd)

PHP-FPM 组件: 包含了常用的PHP 7.0/7.1/7.2/7.4 版本。
# 前提: 安装Docker环境 - Dependency
方法1 (Linux): docker-ce镜像-docker-ce下载地址-docker-ce安装教程-阿里巴巴开源镜像站
```
https://developer.aliyun.com/mirror/docker-ce
```
方法2: Get Docker _ Docker Documentation
```
https://docs.docker.com/get-docker/
```
方法3: 执行以下命令（使用阿里云镜像，适合中国用户 CentOS 7 操作系统）
```
sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://mirrors.aliyun.com/docker-ce/linux/centos/docker-ce.repo
sudo yum -y makecache fast
sudo yum install docker-ce docker-ce-cli containerd.io
systemctl start docker
systemctl enable docker
systemctl status docker
docker run hello-world
```
# 如何获得此 Docker 镜像 - How to get this Docker image?
请参考以下两个方法、步骤 Please refer to below steps
# 方法一 （直接从Docker官方公共仓库拉取，推荐）
【针对中国境内用户】
使用Docker时需要首先下载一个官方镜像，例如 mysql、wordpress。然而由于网络原因，下载一个Docker官方镜像可能会需要很长的时间，甚至下载失败。为此，阿里云容器镜像服务ACR提供了官方的镜像站点，从而加速官方镜像的下载。

参考引用自 https://help.aliyun.com/document_detail/60750.html
```
sudo mkdir -p /etc/docker
sudo tee /etc/docker/daemon.json <<-'EOF'
{
  "registry-mirrors": ["https://[系统分配前缀].mirror.aliyuncs.com"]
}
EOF
sudo systemctl daemon-reload
sudo systemctl restart docker
```

然后再执行以下命令 - Docker Pull Command
```
docker pull huangsen365/centos7-remi-php
```

# 方法二 （自行构建，适合自定义修改Dockerfile）
获得最新源代码
```
git clone git@github.com:huangsen365/centos7-remi-php.git
```
执行以下命令构建镜像 - Build image
```
cd ./centos7-remi-php
sh ./docker_build.sh 
```
# 如何运行创建容器实例? 执行以下命令 - Run container
下载基本模板文件(包含默认站点的 Apache httpd conf 和 PHP-FPM conf 配置文件)
```
mkdir -p /root/data1 /root/wget_download
yum -y install wget ; \
    wget https://github.com/huangsen365/centos7-remi-php/archive/master.zip \
    -O /root/wget_download/centos7-remi-php.zip
yum -y install unzip ; unzip /root/wget_download/centos7-remi-php.zip -d /root/data1/
```
执行脚本
```
cd /root/data1/centos7-remi-php-master/yourdomain.com/ ; sh ./run.sh
```
# 注意事项
容器默认时区为东八区（UTC+8），有需要可以参考以下命令自行修改Dockerfile
```
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
```
默认站点配置
```
./volumes/volume_yourdomain.com/etc/httpd/conf2.d/httpd_XX01_www.yourdomain.com.conf
```

# 有疑问?欢迎通过以下渠道反馈交流 - Welcome feedback
https://github.com/huangsen365/centos7-remi-php/issues

