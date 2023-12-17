#!/bin/bash
GOARCH=amd64 GOOS=windows go build -o ./build/app_windows_amd64 main.go
GOARCH=amd64 GOOS=linux go build -o ./build/app_linux_amd64 main.go
GOARCH=arm64 GOOS=linux go build -o ./build/app_linux_arm64 main.go
