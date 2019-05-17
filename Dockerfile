FROM ruby:latest

# Infra scecific
RUN gem install rake -v '~> 12.3'
#The bigdecimal and webrick are dependencies for awspec and currently not included with the awspec install
RUN gem install awspec -v '1.17.4'
RUN gem install aws-sdk -v '~> 3.0.1'
    
HEALTHCHECK NONE