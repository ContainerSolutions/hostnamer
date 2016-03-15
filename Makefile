docker-container = containersol/hostnamer
dist = dist/hostnamer

all: build-container

build-app:
	@go fmt *.go
	@go build -o $(dist) main.go

build-container:
	@go fmt *.go
	@GOOS=linux GOARCH=amd64 CGO_ENABLED=0 go build -o $(dist) main.go
	@docker build -t $(docker-container) .

dev:
	docker run -ti -p 8000:8000 -h foobar --rm $(docker-container)

run:
	@go run main.go

clean:
	@go clean
	@rm -fv dist/*
	@-docker rmi $(docker-container) 2>/dev/null

deploy:
	docker push $(docker-container)

