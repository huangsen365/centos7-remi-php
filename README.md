# centos7-remi-php
centos7 remi php
包含了常见的PHP 7.0/7.1/7.2/7.4 版本。
# Step 1 - 执行以下命令即可构建镜像
sh ./docker_build.sh 
# Step 2 - 执行以下命令即可创建容器运行实例
cd ./yourdomain.com/ ; sh ./yourdomain.com/run.sh
# 注意事项
时区为东八区（UTC+8），有需要可以参考以下命令自行修改

ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
