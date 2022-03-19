FROM debian:bullseye-slim

RUN set -eux \
    && apt-get update -qyy \
    && apt-get install -qyy --no-install-recommends --no-install-suggests \
        netbase \
        ca-certificates \
        iproute2 \
        libcap2 \
        strongswan \
        strongswan-pki \
        strongswan-swanctl \
        libstrongswan-standard-plugins \
        libstrongswan-extra-plugins \
        libcharon-extauth-plugins \
        libcharon-extra-plugins \
    && rm -rf /var/lib/apt/lists/* /var/log/*

COPY config/charon.conf /etc/strongswan.d/charon.conf

EXPOSE 500/udp \
       4500/udp

CMD ["/usr/lib/ipsec/charon"]
