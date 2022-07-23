package main

import "fmt"

func main() {
	limiter := NewLimiter(1, func() error {
		fmt.Println("hello world")
		return nil
	})

	for i := 0; i < 100000; i++ {
		limiter.Leave()

		go limiter.EventFunc()

		limiter.Leave()
	}
}
