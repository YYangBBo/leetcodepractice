package main

import (
	"fmt"
	"sort"
)

func main() {
	// dynamic_planning.CoinChange([]int{186,419,83,408},6249)

	ints := []int{1, 2, 3, 4, 5, 6}

	fmt.Println(sort.Search(len(ints), func(i int) bool {
		return i >= 0
	}))
}
