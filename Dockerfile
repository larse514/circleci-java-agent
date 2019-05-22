FROM circleci/openjdk:8u181-jdk-node-browsers

# Install node
RUN sudo apt-get install -y nodejs
# Install newman 
RUN sudo npm install newman@4.5.0 -g
# Install make
RUN apt-cache policy nodejs
RUN sudo apt-get install --reinstall make=4.1-9.1

HEALTHCHECK NONE