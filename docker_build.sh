date_time=$(date +%Y-%m-%d_%H%M%S)
docker build -t centos7-remi-php . > ./docker_build_log/$date_time.txt &
# 稍等一秒钟，等待以上$date_time.txt文件创建好
sleep 1
tailf ./docker_build_log/$date_time.txt
