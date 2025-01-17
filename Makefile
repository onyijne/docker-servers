# Do not remove this block. It is used by the 'help' rule when
# constructing the help output.
# help:
# help: mysqltopsql Makefile help
# help:

.PHONY: help
# help: help				- Please use "make <target>" where <target> is one of
help:
	@grep "^# help\:" Makefile | sed 's/\# help\: //' | sed 's/\# help\://'

.PHONY: dev
# help: dev				- build container for dev profile
dev:
	@BUILDKIT_PROGRESS=plain docker compose --profile=dev  up --build -d --remove-orphans

.PHONY: prod
# help: prod				- build container for prod profile
prod:
	@BUILDKIT_PROGRESS=plain docker compose --profile=prod up --build -d --remove-orphans

.PHONY: init
# help: init				- clean psql and mysql dir
init:
	@bash init.sh

.PHONY: p
# help: p				- prune
p:
	@echo Y | docker volume prune; echo Y | docker network prune
	@docker volume rm sait_thoth_redis_cache

.PHONY: res
# help: res				- make res d=tedu f=flexdeal_cico.sql
res:
	@docker exec -it cf-st-mysql bash -c \
	"mysql --defaults-extra-file=config.cnf --database=$d < $f"


UNAME := $(shell uname)