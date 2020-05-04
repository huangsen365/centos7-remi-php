# centos7-remi-php
centos7 remi php Docker image

包含了常见的PHP 7.0/7.1/7.2/7.4 版本。
# 如何使用 - How to use it?
请参考以下步骤 Please refer to below steps
# Step 1 - 执行以下命令即可构建镜像
sh ./docker_build.sh 
# Step 2 - 执行以下命令即可创建容器运行实例
cd ./yourdomain.com/ ; sh ./run.sh
# 注意事项
时区为东八区（UTC+8），有需要可以参考以下命令自行修改Dockerfile

ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
