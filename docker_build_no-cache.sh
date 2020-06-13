date_time=$(date +%Y-%m-%d_%H%M%S)
#docker build -t centos7-remi-php . > ./docker_build_log/$(date +%Y-%m-%d_%H%M%S).txt &
docker build --no-cache -t huangsen365/centos7-remi-php . > ./docker_build_log/$date_time.txt &
tail -f ./docker_build_log/$date_time.txt
