FROM jarzamendia/alpine-3.10

ENV HUGO_VERSION "0.59.1"

RUN apk add --no-cache git libstdc++ python3

RUN wget -q -P /tmp "https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz"; \
    tar -C /tmp -xvf /tmp/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz; \
    mv /tmp/hugo /bin/hugo; \
    rm -Rf /tmp/*; \
    wget "https://bootstrap.pypa.io/get-pip.py" -O /dev/stdout | python3; \
    pip install Pygments;

COPY entrypoint.sh /

WORKDIR /src

VOLUME /src

EXPOSE 1313

CMD ["hugo", "server", "-w", "--bind", "0.0.0.0"]

ENTRYPOINT ["/entrypoint.sh"]