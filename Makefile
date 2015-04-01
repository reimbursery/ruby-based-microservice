NAME=quay.io/reimbursery/ruby-based-microservice
VERSION=$(shell cat VERSION)

.PHONY: all

all:
	docker build -t $(NAME):$(VERSION) .

bump: all
	docker tag -f $(NAME):$(VERSION) $(NAME):latest

push: all bump
	docker push $(NAME)
