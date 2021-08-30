package mid

// 输入两棵二叉树A和B，判断B是不是A的子结构。(约定空树不是任意一个树的子结构)
//B是A的子结构， 即 A中有出现和B相同的结构和节点值。
// https://leetcode-cn.com/problems/shu-de-zi-jie-gou-lcof/
func isSubStructure(A *TreeNode, B *TreeNode) bool {
	if A == nil || B == nil {
		return false
	}

	subA := make([]*TreeNode,0)
	var dfsFindB func(node *TreeNode)
	dfsFindB = func(node *TreeNode) {
		if node == nil {
			return
		}

		if node.Val == B.Val{
			subA = append(subA, node)
		}

		dfsFindB(node.Left)
		dfsFindB(node.Right)
	}

	dfsFindB(A)
	if subA == nil {
		return false
	}

	var dfsCheck func(a,b *TreeNode) bool
	dfsCheck = func(a, b *TreeNode) bool {
		if a != nil && b != nil && a.Val != b.Val {
			return false
		}
		if b == nil {
			return true
		}

		if a == nil {
			return false
		}

		return dfsCheck(a.Left,b.Left) && dfsCheck(a.Right,b.Right)
	}

	flag := false
	for _, node := range subA {
		if dfsCheck(node,B) {
			flag = true
		}
	}

	return flag
}
