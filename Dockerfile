FROM alpine:3.9.4
LABEL maintainer github/larse514

# Generally it is best practice for enterprises
#  to maintain a mirror of approved libraries
RUN apk update && apk upgrade

# base packages for docker environment
RUN apk add --no-cache git openssh tar gzip ca-certificates docker jq

# Install node
RUN apk add --update nodejs=10.14.2-r0 nodejs-npm

# # Install newman 
RUN npm install newman@4.5.0 -g
# # Install make
RUN apk add make=4.2.1-r2

# Install git
RUN apk add git=2.20.1-r0

# Install awscli
RUN apk -Uuv add groff less python py-pip \
    && pip install awscli \
    && apk --purge -v del py-pip \
    && rm /var/cache/apk/* 

#install java
RUN apk add --no-cache openjdk8

HEALTHCHECK NONE