if [ -n "$1" ]; then
    rsync -av /root/data_template/ /root/"$1"/
else
    echo "dataX argv is NOT set"
fi
