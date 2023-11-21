#!/bin/bash

protoc -I proto proto/sso/sso.proto --go_out=./gen/go --go_opt=paths=source_relative --go-grpc_out=./gen/go --go-grpc_opt=paths=source_relative
# key -I: first param is the directory where the proto files are, second param is the proto file
# key --go_out=./gen/go: output directory for generated files
# key --go_opt=paths=source_relative: generated files will use the same package level
# key --go-grpc_out=./gen/go: output directory for generated grpc files
# key --go-grpc_opt=paths=source_relative: generated grpc files will use the same package level

# This project needs to be shared into GitHub or other