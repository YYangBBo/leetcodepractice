package recursion

// 给定一个二叉树, 找到该树中两个指定节点的最近公共祖先。
//百度百科中最近公共祖先的定义为：“对于有根树 T 的两个节点 p、q，最近公共祖先表示为一个节点 x，满足 x 是 p、q 的祖先且 x 的深度尽可能大（一个节点也可以是它自己的祖先）。”
// https://leetcode-cn.com/problems/lowest-common-ancestor-of-a-binary-tree/
func lowestCommonAncestorE1(root, p, q *TreeNode) *TreeNode {
	if root == nil {
		return nil
	}
	if root.Val == p.Val || root.Val == q.Val {
		return root
	}
	left := lowestCommonAncestorE1(root.Left, p, q)
	right := lowestCommonAncestorE1(root.Right, p, q)
	if left != nil && right != nil {
		return root
	}
	if left == nil {
		return right
	}
	return left
}
