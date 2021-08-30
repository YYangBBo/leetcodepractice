package easy

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */

// 输入两个递增排序的链表，合并这两个链表并使新链表中的节点仍然是递增排序的。
// https://leetcode-cn.com/problems/he-bing-liang-ge-pai-xu-de-lian-biao-lcof/
func mergeTwoLists(l1 *ListNode, l2 *ListNode) *ListNode {
	head := &ListNode{
		Val:  0,
		Next: nil,
	}

	currNode := head

	for l1 != nil && l2 != nil {
		if l1.Val < l2.Val {
			currNode.Next = l1
			l1 = l1.Next
		} else {
			currNode.Next = l2
			l2 = l2.Next
		}
		currNode = currNode.Next
	}

	if l1 != nil {
		currNode.Next = l1
	}

	if l2 != nil {
		currNode.Next = l2
	}

	return head.Next
}
