#docker exec -it centos7-remi-php-docker_yourdomain.com bash
docker exec -it $(docker ps -aq --filter name=c_httpd_* | head -n 1) bash
