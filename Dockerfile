FROM node:4
MAINTAINER Ira W. Snyder <isnyder@lco.global>

EXPOSE 8000
ENTRYPOINT [ "/init" ]

ENV PARSOID_VERSION 0.5.2
ENV TINI_VERSION v0.10.0

RUN npm install parsoid@${PARSOID_VERSION} \
        && npm cache clean \
        && rm -rf /tmp/npm* /root/.node* /root/.npm

RUN curl -L https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini > /usr/bin/tini \
        && chmod +x /usr/bin/tini

COPY init /
