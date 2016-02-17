all: build

build:
	@docker build --tag=centinel-db:1.0 .
	@docker tag -t centinel-db:1.0 "localhost:5000/centinel-db:1.0"
	@docker push "localhost:5000/centinel-db:1.0"
