default: help

env-all: ## Install Docker, Git, GOlang, NodeJS, Yarn
env-all: env-docker env-git env-golang env-nodejs
	@echo "Execute '. ~/.profile' to refresh env var"

env-docker:
	@. env/shell-scripts/docker.sh

env-git:
	@. env/shell-scripts/git.sh
	
env-golang:
	@. env/shell-scripts/golang.sh

env-nodejs:
	@. env/shell-scripts/nodejs.sh

env-portainer:
	@docker run -d -p 9000:9000 --name=portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v ~/docker-storage/portainer-data:/data portainer/portainer-ce

env-ubuntu:
	@docker run -d -it --name=ubuntu -v /var/run/docker.sock:/var/run/docker.sock -v ~/docker-storage/ubuntu:/home/share ubuntu

docker-ubuntu-exec:
	@docker exec -it ubuntu /bin/bash

docker-ubuntu-clone-workspace:
	@rm -rf ~/docker-storage/ubuntu/* && cp -r /mnt/hgfs/workspace ~/docker-storage/ubuntu/workpace

env-postgres:
	@cd env/docker/postgres && \
		docker-compose down && \
		docker-compose up -d

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
