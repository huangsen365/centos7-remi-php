cd /root/data1/centos7-remi-php-master/yourdomain.com

docker ps -a | grep c_

if [ $? -eq 0 ]
then
    echo -e "\033[0;31m发现已有命名为 c_* 的实例，请妥当操作之再重新执行本脚本!\n正在取消本次操作...\033[0m"
    echo -e "\033[0;31mFound docker containers named as c_* , please manage them properly and then rerun this script!\nAborting this action...\033[0m"
    exit
else
    echo "Not found existing docker containers named as c_* , this script will continue run in 3 seconds..."
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
