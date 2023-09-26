PWD=$(shell pwd)
PROTOS_PATH=$(PWD)/src/infrastructure/protos

gen-eater-proto:
	protoc \
	--go_out=./genprotos \
	--go_opt=paths=import \
	--go-grpc_out=./genprotos \
	--go-grpc_opt=paths=import \
	-I=/usr/local \
	-I=$(PWD)/eater \
	$(PWD)/eater/*.proto
