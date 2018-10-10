sudo sh -c "
systemctl stop rot13
systemctl disable rot13
rm /lib/systemd/system/rot13.service
systemctl daemon-reload
systemctl reset-failed
"