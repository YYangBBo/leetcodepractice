package offer

// 定义一个函数，输入一个链表的头节点，反转该链表并输出反转后链表的头节点。
// https://leetcode-cn.com/problems/fan-zhuan-lian-biao-lcof/
func reverseList(head *ListNode) *ListNode {
	var pre, curr *ListNode
	curr = head
	for curr != nil {
		next := curr.Next
		curr.Next = pre
		pre = curr
		curr = next
	}

	return pre
}
