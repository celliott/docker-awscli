# docker-awscli makefile

CONTAINER = awscli
VOLUMES = -v ~/:/root

.PHONY: container run

container :
	docker build -t $(CONTAINER) .

run :
	docker run --name $(CONTAINER) -i -d $(PORTS) $(ENVS) $(VOLUMES) -t $(CONTAINER)
	docker exec -ti $(CONTAINER) /bin/bash

kill :
	docker kill $(CONTAINER)
	docker rm $(CONTAINER)

restart :
	docker kill $(CONTAINER)
	docker rm $(CONTAINER)
	docker run --name $(CONTAINER) -i -d $(PORTS) $(ENVS) $(VOLUMES) -t $(CONTAINER)

attach:
	docker attach $(CONTAINER)

bash:
	docker exec -ti $(CONTAINER) /bin/bash

tail:
	docker logs -f $(CONTAINER)
