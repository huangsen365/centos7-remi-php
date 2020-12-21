#docker stop centos7-remi-php-docker_yourdomain.com && docker rm centos7-remi-php-docker_yourdomain.com
docker stop $(docker ps -aq --filter name=c_* | head -n 1) && docker rm $(docker ps -aq --filter name=c_* | head -n 1)
