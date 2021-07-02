package tree

// 给你二叉树的根节点 root ，返回它节点值的 前序 遍历。
// https://leetcode-cn.com/problems/binary-tree-preorder-traversal/
func preorderTraversal(root *TreeNode) []int {
	ret = make([]int,0)
	preorderTraversalSub(root)
	return ret
}

func preorderTraversalSub(node *TreeNode) {
	if node != nil {
		ret = append(ret, node.Val)
		preorderTraversalSub(node.Left)
		preorderTraversalSub(node.Right)
	}
}
