FROM node:7-alpine
MAINTAINER Ira W. Snyder <isnyder@lco.global>

EXPOSE 8000
ENTRYPOINT [ "/init" ]

ENV PARSOID_VERSION 0.6.1
ENV TINI_VERSION v0.14.0

RUN apk add --update bash curl git \
        && rm -rf /var/cache/apk/*

RUN npm install parsoid@${PARSOID_VERSION} \
        && npm cache clean \
        && rm -rf /tmp/npm* /root/.node* /root/.npm

RUN curl -L https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini-static > /usr/bin/tini \
        && chmod +x /usr/bin/tini

COPY init /
