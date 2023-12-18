#!/bin/bash
GOARCH=amd64 GOOS=windows go build -o ./build/wangke_windows_amd64.exe main.go
GOARCH=amd64 GOOS=linux go build -o ./build/wangke_linux_amd64 main.go
GOARCH=arm64 GOOS=linux go build -o ./build/wangke_linux_arm64 main.go
