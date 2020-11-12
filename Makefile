DOCKER_IMAGE=asm-tutorial
WORKDIR=/home/tutorial/tutorial

.PHONY: build-docker-container
build-docker-container:
	docker build -t $(DOCKER_IMAGE) .

.PHONY: run-docker-container
run-docker-container:
	docker run -it --rm --name $(DOCKER_IMAGE) -v $(PWD):$(WORKDIR) $(DOCKER_IMAGE) /bin/bash

.PHONY: clean
clean:
	rm -rf *.o *.out