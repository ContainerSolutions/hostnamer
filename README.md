# hostnamer

Hostnamer is a simple docker image that serves up an http endpoint on port 8080. It will return `200 OK` and the hostname of the docker container.

## Build
`make build-container`

This will produce the `containersol/hostnamer` image.

## Usage
`docker run -p 8080:8080 -h rabbits -it --rm containersol/hostnamer`

then, do a curl:

`curl <docker IP>:8080`

which will return the string `rabbits`
