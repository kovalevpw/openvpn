FROM debian:bullseye-slim

ENV DEBIAN_FRONTEND noninteractive

#COPY openvpn-as.sh /usr/local/bin/

ADD https://openvpn.net/downloads/openvpn-as-bundled-clients-latest.deb .
ADD https://openvpn.net/downloads/openvpn-as-latest-debian11.amd_64.deb .

RUN apt-get update && apt-get install -y --no-install-recommends \
        bridge-utils \
        dmidecode \
        iptables \
        iproute2 \
        libc6 \
        libffi7 \
        libgcc-s1 \
        liblz4-1 \
        liblzo2-2 \
        libmariadb3 \
        libpcap0.8 \
        libssl1.1 \
        libstdc++6 \
        zlib1g \
        libsasl2-2 \
        libsqlite3-0 \
        net-tools \
        python3-pkg-resources \
        python3-migrate \
        python3-sqlalchemy \
        python3-mysqldb \
        python3-ldap3 \
        sqlite3 \
    && dpkg -i openvpn-as-bundled-clients-latest.deb \
    && dpkg -i openvpn-as-latest-debian11.amd_64.deb \
    && apt-get purge -y --auto-remove \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && rm *.deb

EXPOSE 943/tcp
EXPOSE 443/tcp
EXPOSE 1194/udp

VOLUME ["/usr/local/openvpn_as/etc"]

CMD ["openvpn-as.sh"]
