# Straight Docker
## How to Build

	docker build . -t myjupyter:latest

## How to Run

	docker run -p 8888:8888 -it myjupyter:latest

OR

	docker run -v /host/directory:/container/directory -p 8888:8888 -it myjupyter:latest


# Docker-Compose
## How to Build

	docker-compose build

## How to Run

	docker-compose up

Control-C to close the `docker-compose up` command