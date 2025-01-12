build:
	docker build \
		--target base \
		--tag josuedjhcayola/alpine-ansible:latest \
		.

	docker build \
		--target develop \
		--tag josuedjhcayola/alpine-ansible:develop \
		.

.PHONY: push
push: build
	docker push \
		josuedjhcayola/alpine-ansible:latest

	docker push \
		josuedjhcayola/alpine-ansible:develop

.PHONY: ansible
ansible:
	docker-compose run --rm --service-ports --use-aliases ansible