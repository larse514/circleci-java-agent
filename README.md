# circleci-java-agent

Repository containing base image for Java CircleCI builds to aws.  

In order to run locally ensure you have [Ruby](https://www.ruby-lang.org/en/documentation/installation/), Gem, and Bundler installed on your machine. Ruby is required to run InSpec, which is installed via Bundler in the dependencies step of the [Makefile](Makefile).