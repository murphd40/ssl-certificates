
docker-build:
	docker build -t ssl-certs .

test:
	docker run --rm -it --entrypoint=sh --mount type=bind,source="$(PWD)/out/",target=/out ssl-certs:latest

out:
	mkdir out

create-root-pair: out
	docker run --rm -it --entrypoint=/scripts/create-root-pair.sh --mount type=bind,source="$(PWD)/out/",target=/out ssl-certs:latest
