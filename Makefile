NAME=reimbursery/ruby-based-microservice
VERSION=$(shell cat VERSION)

.PHONY: all

all:
	docker build -t $(NAME):$(VERSION) .

push: all
	docker tag -f $(NAME):$(VERSION) $(NAME):latest
	docker push $(NAME)
