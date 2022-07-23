package main

import "fmt"

func Array() {
	var intArr = [...]int{1, 2, 3}
	var intSli = []int{1, 2, 3}

	fmt.Println(intArr)
	fmt.Println(intSli)
}
