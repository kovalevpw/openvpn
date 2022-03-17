# OpenVPN Access Server
Docker container

## Create and start service
```bash
docker pull docker.io/kovalevpw/openvpn:bullseye
docker create \
    --name openvpn \
    --publish 943:943/tcp \
    --publish 443:443/tcp \
    --publish 1194:1194/udp \
    --cap-add NET_ADMIN \
    --restart unless-stopped \
    --volume openvpn:/usr/local/openvpn_as/etc \
    docker.io/kovalevpw/openvpn:bullseye
docker start openvpn
```

## Setup admin's password
```bash
docker exec -it openvpn passwd openvpn
```
