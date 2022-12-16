FROM registry.access.redhat.com/ubi8/openssl

RUN mkdir /out

COPY openssl /openssl

WORKDIR /openssl/root/ca
RUN mkdir certs crl newcerts && touch index.txt && echo 1000 > serial

COPY scripts /scripts
RUN chmod +x /scripts/*.sh
