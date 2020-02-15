#cp -pR volumes/default_paths_for_docker/ volumes/volume_yourdomain.com/
#cp -pR volumes/tmp/default_paths_for_docker/ volumes/volume_yourdomain.com/
rsync -av volumes/tmp/default_paths_for_docker/ volumes/volume_yourdomain.com/
