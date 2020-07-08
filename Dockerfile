FROM alpine:3.12.0

[![Build Status](https://drone.dotya.ml/api/badges/wanderer/docker-alpine-rsync/status.svg)](https://drone.dotya.ml/wanderer/docker-alpine-rsync)

ARG BUILD_DATE
ARG VCS_REF

LABEL description="Alpine-based image containing simply rsync"

LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/wULLSnpAXbWZGYDYyhWTKKspEQoaYxXyhoisqHf/docker-alpine-rsync.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.license=GPL-3.0

RUN apk update && apk -U upgrade --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing
RUN apk add --no-cache ca-certificates rsync openssh-client --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing && \
  rm -rf /var/cache/apk/*
