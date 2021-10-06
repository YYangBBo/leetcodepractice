package main

import (
	"fmt"
	"testing"
)

func TestQ(t *testing.T) {
	fmt.Println(byte(1))
	fmt.Println(int('1'))
	fmt.Println(byte(int('1')))
	fmt.Println(int(byte(1)))
}
