#!/bin/sh

chmod u+s /bin/ping

PD=$(pgrep dhcpcd)
while kill $PD
do
  printf .
  sleep 0.5
done

ip a a 10.5.85.118/16 brd + dev eth0
ip r a default via 10.5.0.1

cat > /etc/resolv.conf <<EOF
nameserver 1.1.1.1
nameserver 8.8.8.8
nameserver 8.8.4.4
EOF

