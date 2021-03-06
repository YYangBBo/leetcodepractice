package main

import "fmt"

func main() {
	ch := GenNatural()
	for i := 0; i < 100; i++ {
		prime := <-ch
		fmt.Printf("%v:%v\n", i+1, prime)
		ch = PrimeFilter(ch, prime)
	}
}

func GenNatural() chan int {
	ch := make(chan int)
	go func() {
		for i := 2; ; i++ {
			ch <- i
		}
	}()

	return ch
}

func PrimeFilter(in <-chan int, prime int) chan int {
	out := make(chan int)

	go func() {
		for {
			if i := <-in; i%prime != 0 {
				out <- i
			}
		}
	}()

	return out
}
