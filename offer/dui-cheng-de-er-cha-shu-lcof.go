package offer

// 请实现一个函数，用来判断一棵二叉树是不是对称的。如果一棵二叉树和它的镜像一样，那么它是对称的。
// https://leetcode-cn.com/problems/dui-cheng-de-er-cha-shu-lcof/
func isSymmetric(root *TreeNode) bool {
	if root == nil {
		return true
	}

	var symetric func(lNode,rNode *TreeNode) bool
	symetric = func(lNode, rNode *TreeNode) bool {
		if lNode == nil && rNode == nil {
			return true
		}

		if lNode == nil || rNode == nil || lNode.Val != rNode.Val {
			return false
		}

		return symetric(lNode.Left,rNode.Right) && symetric(lNode.Right,rNode.Left)
	}

	return symetric(root.Left,root.Right)
}