#docker cp -a centos7-remi-php-test:/tmp/default_paths_for_docker ./volumes/
docker cp -a centos7-remi-php-test:/tmp/default_paths_for_docker.tar.gz ./volumes/
tar zxvf ./volumes/default_paths_for_docker.tar.gz -C ./volumes/
