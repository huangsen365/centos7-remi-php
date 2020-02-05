docker run --privileged --name centos7-remi-php-test -v /sys/fs/cgroup:/sys/fs/cgroup:ro -d --restart always centos7-remi-php
docker exec centos7-remi-php-test tar zcvf /tmp/default_paths_for_docker.tar.gz -C /tmp/ /tmp/default_paths_for_docker/
