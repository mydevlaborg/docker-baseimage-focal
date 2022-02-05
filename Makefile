NAME := "docker-baseimage-focal"
MAINTAINER := "mydevlab"
VERSION := "0.0.1"

.DEFAULT_GOAL := help

.PHONY: help image scan

image:  ## build a new docker image using latest package updates
	cd ./baseimage && docker build --no-cache=true -t $(MAINTAINER)/${NAME}:${VERSION} --rm . | tee build-${NAME}.log
	
scan:  ## scan the generated docker image for known vulnerabilities
	docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock aquasec/trivy:latest image $(MAINTAINER)/${NAME}:${VERSION}

help: ## display the help information (default command)
	@echo "make help usage for docker image builder"
	@echo "  target image: $(MAINTAINER)/$(NAME):$(VERSION)"
	@echo
	@echo "usage: make <command>"
	@echo
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
