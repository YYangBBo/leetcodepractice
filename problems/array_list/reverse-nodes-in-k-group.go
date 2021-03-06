package array_list

// reverseKGroup 给你一个链表，每k个节点一组进行翻转，请你返回翻转后的链表。
//k是一个正整数，它的值小于或等于链表的长度。
//如果节点总数不是k的整数倍，那么请将最后剩余的节点保持原有顺序。
//
//进阶：
//你可以设计一个只使用常数额外空间的算法来解决此问题吗？
//你不能只是单纯的改变节点内部的值，而是需要实际进行节点交换
// https://leetcode-cn.com/problems/reverse-nodes-in-k-group/
func reverseKGroupM1(head *ListNode, k int) *ListNode {
	headNode := &ListNode{
		Val:  0,
		Next: head,
	}
	firstNode := headNode
	var preNode, endNode *ListNode
	for head != nil {
		i := 0
		for ; i < k && head != nil; i++ {
			if i == 0 {
				preNode = head
			}
			endNode = head
			head = head.Next
		}

		if i == k {
			reverseNode(preNode, endNode)
			headNode.Next = endNode
			headNode = preNode
		} else {
			headNode.Next = preNode
		}
	}

	return firstNode.Next
}

func reverseNode(preNode, endNode *ListNode) {
	prev := endNode.Next
	p := preNode
	for prev != endNode {
		nex := p.Next
		p.Next = prev
		prev = p
		p = nex
	}
}
