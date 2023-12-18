#!/bin/bash
GOARCH=amd64 GOOS=windows go build -ldflags="-s -w" -o ./build/wangke_windows_amd64.exe main.go
# 使用 UPX 压缩
upx -9 ./build/wangke_windows_amd64.exe

GOARCH=amd64 GOOS=linux go build -ldflags="-s -w" -o ./build/wangke_linux_amd64 main.go
# 使用 UPX 压缩
upx -9 ./build/wangke_linux_amd64

GOARCH=arm64 GOOS=linux go build -ldflags="-s -w" -o ./build/wangke_linux_arm64 main.go
# 使用 UPX 压缩
upx -9 ./build/wangke_linux_arm64
