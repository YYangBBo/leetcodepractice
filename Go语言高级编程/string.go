package main

import (
	"reflect"
	"unsafe"
)

func stringTest() (s string) {
	myStr := (*reflect.StringHeader)(unsafe.Pointer(&s))

	oldStr := "123"
	myStr.Data = uintptr(unsafe.Pointer(&oldStr))
	myStr.Len = 10

	return
}
