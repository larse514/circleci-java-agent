IMAGE=larse514/circleci-java-agent
TAG=latest

default: dependencies build test
.PHONY: dependencies build test

dependencies: 
	@bundle install

build: dependencies
	./scripts/build.sh $(IMAGE) $(TAG)

test:
	./scripts/test.sh $(IMAGE) $(TAG)

release:
	./scripts/release.sh $(IMAGE) $(TAG)

clean:
	./scripts/cleanup.sh $(IMAGE)