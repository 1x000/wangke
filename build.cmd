@echo off
SET GOARCH=amd64
SET GOOS=windows
go build -o ./build/app_windows_amd64.exe main.go
SET GOOS=linux
go build -o ./build/app_linux_amd64 main.go
SET GOARCH=arm64
go build -o ./build/app_linux_arm64 main.go
