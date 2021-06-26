package array_list

// https://leetcode-cn.com/problems/linked-list-cycle-ii
// 给定一个链表，返回链表开始入环的第一个节点。如果链表无环，则返回null。
//
//detectCycleM1 为了表示给定链表中的环，我们使用整数 pos 来表示链表尾连接到链表中的位置（索引从 0 开始）。 如果 pos 是 -1，则在该链表中没有环。注意，pos 仅仅是用于标识环的情况，并不会作为参数传递到函数中。
func detectCycleM1(head *ListNode) *ListNode {
	seen := map[*ListNode]struct{}{}
	for head != nil {
		if _, ok := seen[head]; ok {
			return head
		}
		seen[head] = struct{}{}
		head = head.Next
	}
	return nil
}

// detectCycleE1 快慢指针
func detectCycleE1(head *ListNode) *ListNode {
	if head == nil || head.Next == nil {
		return nil
	}

	slow ,fast := head,head

	for fast != nil && fast.Next != nil {
		slow = slow.Next
		fast = fast.Next.Next
		if slow == fast {
			p:= head
			// 需要进行回退
			for p != slow{
				p = p.Next
				slow = slow.Next
			}
			return p
		}
	}
	return nil
}