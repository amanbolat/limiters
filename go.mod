module github.com/amanbolat/limiters

go 1.16

replace github.com/coreos/bbolt => go.etcd.io/bbolt v1.3.6

require (
	github.com/go-redis/redis v6.15.9+incompatible
	github.com/google/uuid v1.3.0
	github.com/hashicorp/consul/api v1.9.1
	github.com/onsi/gomega v1.15.0 // indirect
	github.com/pkg/errors v0.9.1
	github.com/samuel/go-zookeeper v0.0.0-20201211165307-7117e9ea2414
	github.com/stretchr/testify v1.7.0
	go.etcd.io/etcd v3.3.25+incompatible
	go.etcd.io/etcd/client/v3 v3.5.0
	google.golang.org/grpc v1.40.0
	google.golang.org/protobuf v1.27.1
)
