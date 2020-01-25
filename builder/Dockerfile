FROM alpine:3.10

RUN HUGO_VERSION="0.63.1"; \
    apk add --no-cache git libstdc++ python3;\
    wget -q -P /tmp "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz"; \
    tar -C /tmp -xvf /tmp/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz; \
    mv /tmp/hugo /bin/hugo; \
    rm -Rf /tmp/*; \
    wget "https://bootstrap.pypa.io/get-pip.py" -O /dev/stdout | python3; \
    pip install Pygments

WORKDIR /src

ARG BUILD_DATE

ARG MANTAINER