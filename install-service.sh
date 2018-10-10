sudo sh -c "cat > /lib/systemd/system/rot13.service <<EOF
[Unit]
Description=ROT13 demo service
After=network.target
StartLimitIntervalSec=0
[Service]
Type=simple
Restart=always
RestartSec=1
User=${USER}
ExecStart=/usr/bin/env php ${PWD}/server.php

[Install]
WantedBy=multi-user.target
EOF
"