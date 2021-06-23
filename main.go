package main

import (
	"leetcodepractice/problems"
)

func main()  {
	nodeLists := &problems.ListNode{
		Val:  1,
		Next: &problems.ListNode{
			Val:  2,
			Next: &problems.ListNode{
				Val:  3,
				Next: &problems.ListNode{
					Val:  4,
					Next: &problems.ListNode{
						Val:  5,
						Next: nil,
					},
				},
			},
		},
	}
	problems.SwapPairsM1(nodeLists)
}