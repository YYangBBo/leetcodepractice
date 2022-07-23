package main

import (
	"fmt"
	"reflect"
	"unsafe"
)

func main() {
	originSli := []int{1, 2, 3, 4, 5}

	new1Sli := make([]int, 0)
	new1Sli = append(new1Sli, originSli[0])
	new1Sli = append(new1Sli, originSli[3])
	new1Sli = append(new1Sli, 6)
	new1Sli = append(new1Sli, 6)
	new1Sli = append(new1Sli, 6)

	new2Sli := originSli[:0]
	new2Sli = append(new2Sli, originSli[0])
	new2Sli = append(new2Sli, originSli[3])
	new2Sli = append(new2Sli, 6)
	new2Sli = append(new2Sli, 6)
	new2Sli = append(new2Sli, 6)
	new2Sli = append(new2Sli, 6)

	fmt.Println(originSli)
	fmt.Println(new1Sli)
	fmt.Println(new2Sli)

	fmt.Println((*reflect.SliceHeader)(unsafe.Pointer(&originSli)).Data)
	fmt.Println((*reflect.SliceHeader)(unsafe.Pointer(&new1Sli)).Data)
	fmt.Println((*reflect.SliceHeader)(unsafe.Pointer(&new2Sli)).Data)
}
