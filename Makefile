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

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
