package easy

// 给定单向链表的头指针和一个要删除的节点的值，定义一个函数删除该节点。
//返回删除后的链表的头节点。
//注意：此题对比原题有改动
// https://leetcode-cn.com/problems/shan-chu-lian-biao-de-jie-dian-lcof/
func deleteNode(head *ListNode, val int) *ListNode {
	if head.Val == val {
		return head.Next
	}

	headNode,preNode := head,head
	for head != nil {
		if head.Val == val {
			preNode.Next = head.Next
			break
		}
		preNode = head
		head = head.Next
	}

	return headNode
}
