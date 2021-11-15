#docker exec -it centos7-remi-php-docker_yourdomain.com bash
#docker exec -it $(docker ps -aq --filter name=c_* | tail -n 1) bash
docker exec -it $(docker ps -aq --filter name=c_* --filter ancestor=huangsen365/centos7-remi-php | tail -n 1) bash
