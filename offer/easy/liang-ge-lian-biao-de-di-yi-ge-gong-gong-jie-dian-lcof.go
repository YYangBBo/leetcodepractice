package easy


// 输入两个链表，找出它们的第一个公共节点。
// https://leetcode-cn.com/problems/liang-ge-lian-biao-de-di-yi-ge-gong-gong-jie-dian-lcof/
func getIntersectionNode(headA, headB *ListNode) *ListNode {
	aMap := make(map[*ListNode]struct{})

	for headA != nil {
		aMap[headA] = struct{}{}
		headA = headA.Next
	}

	for headB != nil {
		if _,exist := aMap[headB];exist {
			return headB
		}

		headB = headB.Next
	}

	return nil
}

func getIntersectionNodeE1(headA, headB *ListNode) *ListNode {
	if headA == nil || headB == nil {
		return nil
	}
	pa, pb := headA, headB
	for pa != pb {
		if pa == nil {
			pa = headB
		} else {
			pa = pa.Next
		}
		if pb == nil {
			pb = headA
		} else {
			pb = pb.Next
		}
	}
	return pa
}
