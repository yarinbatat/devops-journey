#!/bin/bash
echo "=== IP Addresses ==="
ip a

echo "=== Routes ==="
ip route show

echo "=== Checking port 8080 ==="
ss -tuln | grep 8080 || echo "Port 8080 not open"

echo "=== Curl localhost:8080 ==="
curl -s http://localhost:8080/ || echo "Curl failed"

echo "=== Traceroute to 8.8.8.8 ==="
traceroute -m 5 8.8.8.8


sudo apt update && sudo apt install ufw -y
sudo ufw allow 22/tcp
sudo ufw allow 8080/tcp
sudo ufw enable

