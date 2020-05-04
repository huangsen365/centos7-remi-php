# centos7-remi-php
centos7 remi php Docker image

包含了常见的PHP 7.0/7.1/7.2/7.4 版本。
# 前提: 安装Docker环境 - Dependency
方法1 (Linux): docker-ce镜像-docker-ce下载地址-docker-ce安装教程-阿里巴巴开源镜像站
```
https://developer.aliyun.com/mirror/docker-ce
```
方法2: Get Docker _ Docker Documentation
```
https://docs.docker.com/get-docker/
```
方法3: 执行以下命令
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
# 如何使用 - How to use it?
请参考以下步骤 Please refer to below steps
# Step 1 - 执行以下命令构建镜像 - Build image
sh ./docker_build.sh 
# Step 2 - 执行以下命令创建容器实例 - Run container
cd ./yourdomain.com/ ; sh ./run.sh
# 注意事项
时区为东八区（UTC+8），有需要可以参考以下命令自行修改Dockerfile

ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
# 有疑问?欢迎通过以下渠道反馈交流 - Welcome feedback
https://github.com/huangsen365/centos7-remi-php/issues
