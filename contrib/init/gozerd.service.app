[Unit]
Description=Gozer's distributed currency daemon
After=network.target

[Service]
User=gozercore
Group=gozercore

Type=forking
PIDFile=/var/lib/gozerd/gozerd.pid
ExecStart=/usr/bin/gozerd -daemon -pid=/var/lib/gozerd/gozerd.pid \
-conf=/etc/gozercore/gozer.conf -datadir=/var/lib/gozerd -disablewallet

Restart=always
PrivateTmp=true
TimeoutStopSec=60s
TimeoutStartSec=2s
StartLimitInterval=120s
StartLimitBurst=5

[Install]
WantedBy=multi-user.target
