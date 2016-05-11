package main

import "github.com/kataras/iris"

func main() {
	iris.Get("/hello", func(c *iris.Context) {
		c.Write("Hi %s", "iris")
	})
	iris.Listen(":8080")
}
