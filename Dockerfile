FROM alpine:3.9.4
LABEL maintainer github/larse514

# Generally it is best practice for enterprises
#  to maintain a mirror of approved libraries
RUN apk update && apk upgrade

# base packages for docker environment
RUN apk add --no-cache git openssh tar gzip ca-certificates docker

# packages for ruby 
RUN apk add --no-cache curl wget openssl openrc python3 ruby ruby-doc ruby-bundler ruby-dev g++ libffi-dev musl-dev curl sudo

# add docker service to runlevel https://manpages.debian.org/testing/openrc/rc-update.8.en.html (from https://wiki.alpinelinux.org/wiki/Docker)
RUN rc-update add docker boot

# Install bundler
RUN gem install bundler --no-document

# Install node
RUN apk add --update nodejs=10.15.3-r0 nodejs-npm=10.15.3-r0

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

# install java
RUN apk add --no-cache openjdk8

# install maven
ENV MAVEN_VERSION 3.5.4
ENV MAVEN_HOME /usr/lib/mvn
ENV PATH $MAVEN_HOME/bin:$PATH

RUN wget http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz && \
  tar -zxvf apache-maven-$MAVEN_VERSION-bin.tar.gz && \
  rm apache-maven-$MAVEN_VERSION-bin.tar.gz && \
  mv apache-maven-$MAVEN_VERSION /usr/lib/mvn

HEALTHCHECK NONE
