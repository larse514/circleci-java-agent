IMAGE=java-agent
TAG=latest

default: dependencies build test
.PHONY: dependencies build test

dependencies: 
	@gem install bundler
	@bundle install

build: dependencies
	./scripts/build.sh $(IMAGE) $(TAG)

test:
	./scripts/test.sh $(IMAGE) $(TAG)
clean:
	./scripts/cleanup.sh $(IMAGE)