namespace = ikupczynski
image = snapcraft
tag = stable-2018-11-09

label = $(namespace)/$(image):$(tag)

.PHONY: help
help:
	@echo "=== $(label)"
	@echo
	@echo "Commands:"
	@echo "  build -  builds the docker image"
	@echo "  push  -  pushes the image to dockerhub"
	@echo
	@echo "To build a snap using a container from this image:"
	@echo '  $$ docker pull $(label)'
	@echo '  $$ docker run --rm -it -v "$$PWD:/build" -w /build $(label)'
	@echo '  # snapcraft'


.PHONY: build
build:
	docker build -t $(label) .


.PHONY: push
push:
	docker push $(label)
