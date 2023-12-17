package main

import (
	"encoding/json"
	"github.com/gin-contrib/gzip"
	"github.com/gin-gonic/gin"
	"io/ioutil"
	"net/http"
	"os"
)

type Config struct {
	IndexDir  string `json:"IndexDir"`
	WorkerDir string `json:"WorkerDir"`
}

func setupRouter(config *Config) *gin.Engine {
	r := gin.Default()

	r.Use(gzip.Gzip(gzip.DefaultCompression))

	r.StaticFile("/", config.IndexDir+"/index.html")
	r.StaticFS("/worker", http.Dir(config.WorkerDir))

	return r
}

func main() {
	// 读取配置文件
	jsonFile, err := os.Open("config.json")
	if err != nil {
		panic(err)
	}
	defer jsonFile.Close()

	byteValue, _ := ioutil.ReadAll(jsonFile)

	var config Config
	json.Unmarshal(byteValue, &config)

	r := setupRouter(&config)
	r.Run() // 在 0.0.0.0:8080 上监听并在服务上服务
}
