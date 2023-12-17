#!/bin/bash
GOARCH=amd64 GOOS=windows go build -o ./build/wagnke_windows_amd64 wagnke
GOARCH=amd64 GOOS=linux go build -o ./build/wagnke_linux_amd64 wagnke
GOARCH=arm64 GOOS=linux go build -o ./build/wagnke_linux_arm64 wagnke
