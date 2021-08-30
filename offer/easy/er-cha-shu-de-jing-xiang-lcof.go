package easy

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

// 请完成一个函数，输入一个二叉树，该函数输出它的镜像。
//
func mirrorTree(root *TreeNode) *TreeNode {
	var revertNode func(node *TreeNode)
	revertNode = func(node *TreeNode) {
		if node == nil {
			return
		}

		node.Right,node.Left = node.Left,node.Right
		revertNode(node.Left)
		revertNode(node.Right)
	}

	revertNode(root)

	return root
}
