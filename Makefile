PWD=$(shell pwd)
PROTOS_PATH=$(PWD)/src/infrastructure/protos

gen-eater-proto:
	protoc \
	--go_out=./src/application/protos \
	--go_opt=paths=import \
	--go-grpc_out=./src/application/protos \
	--go-grpc_opt=paths=import \
	-I=$(PROTOS_PATH)/eater \
	$(PROTOS_PATH)/eater/*.proto
