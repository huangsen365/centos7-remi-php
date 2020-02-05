current_dir=$(pwd)

docker run -d \
  --privileged \
  -v /sys/fs/cgroup:/sys/fs/cgroup:ro \
  -v $current_dir/volumes/volume_yourdomain.com/home:/home \
  -v $current_dir/volumes/volume_yourdomain.com/root:/root \
  -p 80:80 \
  -p 443:443 \
  -p 2222:22 \
  --restart always \
  --name centos7-remi-php-docker_yourdomain.com \
  centos7-remi-php