# wget https://raw-githubusercontent-com-huangsen365.wansio.com/huangsen365/centos7-remi-php/master/somefiles/rsync_from_data_template_to_dataX.sh -O /root/rsync_from_data_template_to_dataX.sh
if [ -n "$1" ]; then
    rsync -av /root/data_template/ /root/"$1"/
else
    echo "dataX argv is NOT set"
fi
