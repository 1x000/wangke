package main

import "github.com/gin-gonic/gin"

func main() {
	r := gin.Default()

	r.GET("/", func(c *gin.Context) {
		c.String(200, "欢迎来到我的网站!")
	})

	r.Run() // 在 0.0.0.0:8080 上监听并在服务上服务
}
