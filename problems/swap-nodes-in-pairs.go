package problems

// 给定一个链表，两两交换其中相邻的节点，并返回交换后的链表。
//你不能只是单纯的改变节点内部的值，而是需要实际的进行节点交换。
//
// 还是使用双指针，但是需要区分偶节点
// https://leetcode-cn.com/problems/swap-nodes-in-pairs/
func SwapPairsM1(head *ListNode) *ListNode {
	curr := 0
	var preNode, nextNode *ListNode

	var newHead *ListNode

	for head.Next != nil {
		if curr == 1 {
			newHead = head
		}
		if curr%2 == 0 {
			// 偶数则保存curr和next
			preNode = head
			head = head.Next
			nextNode = head.Next
		} else {
			head.Next = preNode
			preNode.Next = nextNode

			head = preNode
		}
		curr++

	}

	preNode.Next = head

	return newHead
}

func SwapPairsE1(head *ListNode) *ListNode {
	dummyHead := &ListNode{0, head}
	temp := dummyHead
	for temp.Next != nil && temp.Next.Next != nil {
		node1 := temp.Next
		node2 := temp.Next.Next
		temp.Next = node2
		node1.Next = node2.Next
		node2.Next = node1
		temp = node1
	}
	return dummyHead.Next
}
