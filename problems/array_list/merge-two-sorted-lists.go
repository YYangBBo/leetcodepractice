package array_list

// 将两个升序链表合并为一个新的 升序 链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。
// https://leetcode-cn.com/problems/merge-two-sorted-lists/
func mergeTwoListsM1(l1 *ListNode, l2 *ListNode) *ListNode {
	if l1 == nil {
		return l2
	}
	if l2 == nil {
		return l1
	}

	curr := &ListNode{
		Val:  0,
		Next: nil,
	}
	head := curr

	for l1 != nil || l2 != nil {

		if l1 == nil || (l2 != nil && l1.Val > l2.Val) {
			curr.Next = l2
			l2 = l2.Next
		} else {
			curr.Next = l1
			l1 = l1.Next
		}
		curr = curr.Next
	}

	return head.Next
}

func mergeTwoListsE1(l1 *ListNode, l2 *ListNode) *ListNode {
	if l1 == nil {
		return l2
	}
	if l2 == nil {
		return l1
	}
	// 定义一个结果节点
	var res *ListNode
	// 当l1节点的值大于l2节点的值，那么res指向l2的节点，从l2开始遍历，反之从l1开始
	if l1.Val >= l2.Val {
		res = l2
		res.Next = mergeTwoListsE1(l1, l2.Next)
	} else {
		res = l1
		res.Next = mergeTwoListsE1(l1.Next, l2)
	}
	return res
}
