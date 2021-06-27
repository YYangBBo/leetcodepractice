package main

import (
	"fmt"
	"leetcodepractice/problems/stack_queue_deque"
)

func main()  {

	stack := stack_queue_deque.Constructor()
	stack.Push(2)
	stack.Push(0)
	stack.Push(3)
	stack.Push(0)
	fmt.Println(stack.GetMin())
	stack.Pop()
	fmt.Println(stack.GetMin())
	stack.Pop()
	fmt.Println(stack.GetMin())
	stack.Pop()
	fmt.Println(stack.GetMin())
}