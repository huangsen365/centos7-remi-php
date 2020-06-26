#cp -pR volumes/default_paths_for_docker/ volumes/volume_yourdomain.com/
#cp -pR volumes/opt/centos7-remi-php/default_paths_for_docker/ volumes/volume_yourdomain.com/
rsync -av volumes/opt/centos7-remi-php/default_paths_for_docker/ volumes/volume_yourdomain.com/
