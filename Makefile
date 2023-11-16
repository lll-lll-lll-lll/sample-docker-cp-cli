.PHONY: cli
cli:
	docker build -f . -t cli_image --rm . && \
	docker run -it --name cli_container --mount type=bind,source=$(realpath ./data),target=/src/data -v cli-vol:/src/output   --rm cli 

.PHONY: vol-copy
vol-copy:
	docker run --rm -v cli-vol:/container-vol -v `pwd`/:$(realpath ./) cli_image sh -c 'cp -r /container-vol $(realpath ./)'


docker-cp:
	docker cp cli_container:/src/output $(realpath ./)
