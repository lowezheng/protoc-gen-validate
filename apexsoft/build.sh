#!/bin/sh


CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build -o protoc-gen-live

#CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o bin/HTTPCapture-linux

#CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build -o bin/HTTPCapture-windows.exe

#GOOS=linux GOARCH=arm GOARM=6 go build -o bin/HTTPCapture-linux-arm


#protoc --plugin=protoc-gen-java=./protoc-gen-live \
#    --java_out=gen-src --proto_path=./ live-service.proto

#protoc --plugin=protoc-gen-grpc-go=./protoc-gen-live \
#    --grpc-go_out=gen-src --proto_path=./ live-service.proto

protoc --plugin=protoc-gen-validate=../bin/protoc-gen-go --validate_out=./ --proto_path=./ live-service.proto