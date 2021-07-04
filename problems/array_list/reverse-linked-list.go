package array_list

type ListNode struct {
	Val  int
	Next *ListNode
}

// reverseListM1 给你单链表的头节点 head ，请你反转链表，并返回反转后的链表。
// 暴力解法，先存在数组，再reverse
func reverseListM1(head *ListNode) *ListNode {
	if head == nil || head.Next == nil {
		return head
	}

	var nodes []*ListNode
	for head != nil {
		nodes = append(nodes, head)
		head = head.Next
	}

	for i := len(nodes) - 1; i > 0; i-- {
		nodes[i-1].Next = nil
		nodes[i].Next = nodes[i-1]

	}

	return nodes[len(nodes)-1]
}

// 在遍历链表时，将当前节点的 \textit{next}next 指针改为指向前一个节点。
// 由于节点没有引用其前一个节点，因此必须事先存储其前一个节点。
// 在更改引用之前，还需要存储后一个节点。最后返回新的头引用。
func reverseListE1(head *ListNode) *ListNode {
	var prev *ListNode
	curr := head
	for curr != nil {
		next := curr.Next
		curr.Next = prev
		prev = curr
		curr = next
	}
	return prev
}

func reverseListE2(head *ListNode) *ListNode {
	if head == nil || head.Next == nil {
		return head
	}
	newHead := reverseListE2(head.Next)
	head.Next.Next = head
	head.Next = nil
	return newHead

}

func reverseListP1(head *ListNode) *ListNode {
	var pre *ListNode
	curr := head

	for curr != nil {
		next := curr.Next
		curr.Next = pre
		pre = curr
		curr = next
	}

	return pre
}
