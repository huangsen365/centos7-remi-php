docker ps -a | grep c_httpd_

if [ $? -eq 0 ]
then
    echo "Found docker containers named as c_httpd_* , please manage them properly and then rerun this script!"
    exit
else
    echo "Not found existing docker containers named as c_httpd_* , this script will continue run in 3 seconds..."
    sleep 3
    echo "ready go in 1s!"
    sleep 1
    echo "go now!"
fi

sh ./0_docker_run_test.sh
sh ./1_docker_cp_default_paths_for_docker_to_volumes.sh
sh ./2_cp_default_path_to_volume_yourdomain.com.sh
sh ./3_docker_stop_and_rm_mycentos.sh
sh ./4_docker_run_centos7-remi-php-docker_yourdomain.com.sh
#sh ./5_docker_exec_mkdir_chown_chmod.sh
sh ./6_docker_exec_it_bash.sh
