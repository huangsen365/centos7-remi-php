docker cp -a centos7-remi-php-test:/tmp/default_paths_for_docker.tar.gz ./volumes/
rm -rf ./volumes/tmp/default_paths_for_docker
tar zxvf ./volumes/default_paths_for_docker.tar.gz -C ./volumes/
