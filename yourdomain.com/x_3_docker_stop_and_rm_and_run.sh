#echo "docker stop "$(docker ps -aq --filter name=c_* | head -n 1)" && docker rm "$(docker ps -aq --filter name=c_* | head -n 1)" && sh ./run.sh # Copy this command and paste in terminal to run it!"
docker ps -aq --filter name=c_* | awk '{print "docker stop "$0" && docker rm "$0" && sh ./run.sh # Copy this command and paste in terminal to run it!"}'
