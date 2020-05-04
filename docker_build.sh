date_time=$(date +%Y-%m-%d_%H%M%S)
docker build -t centos7-remi-php . > ./docker_build_log/$date_time.txt &
sleep 1
tailf ./docker_build_log/$date_time.txt

