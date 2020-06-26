docker cp -a centos7-remi-php-test:/opt/centos7-remi-php/default_paths_for_docker.tar.gz ./volumes/
rm -rf ./volumes/opt/centos7-remi-php/default_paths_for_docker
tar zxvf ./volumes/default_paths_for_docker.tar.gz -C ./volumes/
