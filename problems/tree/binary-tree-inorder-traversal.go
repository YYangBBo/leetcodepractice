package tree

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

// 给定一个二叉树的根节点 root ，返回它的 中序 遍历。
// https://leetcode-cn.com/problems/binary-tree-inorder-traversal/
var ret []int

func inorderTraversal(root *TreeNode) []int {
	ret = make([]int, 0)
	inorderTraversalSub(root)
	return ret
}

func inorderTraversalSub(node *TreeNode) {
	if node != nil {
		inorderTraversalSub(node.Left)
		ret = append(ret, node.Val)
		inorderTraversalSub(node.Right)
	}
}
