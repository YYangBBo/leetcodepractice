package offer

  type ListNode struct {
      Val int
      Next *ListNode
 }

func reversePrint(head *ListNode) []int {
	if head == nil {
		return []int{}
	}

	var ret []int

	var reverse func(head *ListNode)
	reverse = func(head *ListNode) {
		if head.Next != nil {
			reverse(head.Next)
		}
		ret = append(ret, head.Val)
	}

	reverse(head)

	return ret
}
