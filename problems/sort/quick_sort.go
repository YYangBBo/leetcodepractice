package sort

import (
	"math/rand"
)

func quickSort(items []int) []int {
	if len(items) < 2  {
		return items
	}

	left,right := 0,len(items)-1

	pivot :=  rand.Int() % len(items)
	items[pivot], items[right] = items[right], items[pivot]

	for i, _ := range items {
		if items[i] < items[right] {
			items[left], items[i] = items[i], items[left]
			left++
		}
	}

	items[left], items[right] = items[right], items[left]

	quickSort(items[:left])
	quickSort(items[left+1:])

	return items
}