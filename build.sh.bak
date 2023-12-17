#!/bin/bash
GOARCH=amd64 GOOS=windows go build -o ./build/main_windows_amd64 main
GOARCH=amd64 GOOS=linux go build -o ./build/main_linux_amd64 main
GOARCH=arm64 GOOS=linux go build -o ./build/main_linux_arm64 main
