FROM alpine:3.15.0

ARG BUILD_DATE
ARG VCS_REF

LABEL description="Alpine-based image containing simply rsync"

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/wULLSnpAXbWZGYDYyhWTKKspEQoaYxXyhoisqHf/docker-alpine-rsync.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.license=GPL-3.0 \
      org.label-schema.description="Alpine-based image containing simply rsync" \
      org.label-schema.vendor="wanderer <wanderer at git.dotya.ml>"

RUN apk update \
    && apk -U upgrade --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing
RUN apk add --no-cache ca-certificates rsync openssh-client sshpass --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing
RUN rm -rf /var/cache/apk/*
