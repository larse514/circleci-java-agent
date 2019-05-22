FROM alpine:3.9.4

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

HEALTHCHECK NONE