package sort

import (
	"fmt"
	"testing"
)

func TestMergeSort(t *testing.T)  {
	fmt.Println(mergeSort([]int{-356,328,705,-199,-373,108,-377,-362,128,98,1,-9,-500,-607,387,12,210,-600,-351,432}))
	fmt.Println(quickSort([]int{-356,328,705,-199,-373,108,-377,-362,128,98,1,-9,-500,-607,387,12,210,-600,-351,432}))
}
