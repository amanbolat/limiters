GO_PKGS=$(foreach pkg, $(shell go list ./...), $(if $(findstring /vendor/, $(pkg)), , $(pkg)))

gen-proto:
	protoc --proto_path=. --go_out=. --go-grpc_out=. \
	 --go_opt=module=github.com/amanbolat/limiters \
	 --go-grpc_opt=module=github.com/amanbolat/limiters  \
	 examples/helloworld/*.proto

test-integration:
	docker-compose up -d  # start etcd and Redis
	ETCD_ENDPOINTS="docker-server:2379" REDIS_ADDR="docker-server:6379" ZOOKEEPER_ENDPOINTS="docker-server:2281" CONSUL_ADDR="docker-server:8500" go test -race -v

fmt:
	@go fmt $(GO_PKGS)

mod:
	go mod tidy
	go mod vendor
