configure:
	gb vendor update --all

build:
	gofmt -w src/wsclnt
	go tool vet src/wsclnt/*.go
	gb test
	gb build