package main

import (
	"fmt"
	"leetcodepractice/problems/stack_queue_deque"
)

func main()  {

	stack := stack_queue_deque.Constructor(3)
	stack.InsertLast(1)
	stack.InsertLast(2)
	stack.InsertFront(3)
	stack.InsertFront(4)
	fmt.Println("getRear==>",stack.GetRear())

}