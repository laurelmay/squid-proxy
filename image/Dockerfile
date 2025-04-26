ARG ALPINE_VERSION

FROM docker.io/library/alpine:${ALPINE_VERSION}

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod 755 /usr/local/bin/entrypoint.sh && \
    apk update && \
    apk add --no-cache squid

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["-NYC"]
