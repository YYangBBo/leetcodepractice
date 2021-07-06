package recursion

// 翻转一棵二叉树。
// https://leetcode-cn.com/problems/invert-binary-tree/description/
func invertTree(root *TreeNode) *TreeNode {
	if root != nil {
		root.Right, root.Left = root.Left, root.Right
		invertTree(root.Left)
		invertTree(root.Right)
	}

	return root
}
