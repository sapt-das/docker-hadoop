DOCKER_NETWORK = hadoop
ENV_FILE = ./hadoop.env
current_branch := $(shell git rev-parse --abbrev-ref HEAD)


build-local:
	docker build --platform linux/amd64 -t sapdas/hadoop-base:$(current_branch) ./base
	docker build --platform linux/amd64 -t sapdas/hadoop-namenode:$(current_branch) ./namenode
	docker build --platform linux/amd64 -t sapdas/hadoop-datanode:$(current_branch) ./datanode
	docker build --platform linux/amd64 -t sapdas/hadoop-nodemanager:$(current_branch) ./nodemanager
	docker build --platform linux/amd64 -t sapdas/hadoop-resourcemanager:$(current_branch) ./resourcemanager
	docker build --platform linux/amd64 -t sapdas/hadoop-historyserver:$(current_branch) ./historyserver
