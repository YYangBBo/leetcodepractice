package recursion

import "math"

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

// 给定一个二叉树，判断其是否是一个有效的二叉搜索树。
//假设一个二叉搜索树具有如下特征：
//节点的左子树只包含小于当前节点的数。
//节点的右子树只包含大于当前节点的数。
//所有左子树和右子树自身必须也是二叉搜索树。
func isValidBST(root *TreeNode) bool {
	isValid := true

	var isValidBSTSub func(node *TreeNode)
	isValidBSTSub = func(node *TreeNode) {
		if node != nil && isValid == true{
			if (node.Left != nil && node.Val <= node.Left.Val) ||
				(node.Right != nil && node.Val >= node.Right.Val ){
				isValid = false
			}
			isValidBSTSub(node.Left)
			isValidBSTSub(node.Right)
		}
	}

	isValidBSTSub(root)

	return isValid
}

func isValidBSTE1(root *TreeNode) bool {
	return helper(root, math.MinInt64, math.MaxInt64)
}

func helper(root *TreeNode, lower, upper int) bool {
	if root == nil {
		return true
	}
	if root.Val <= lower || root.Val >= upper {
		return false
	}
	return helper(root.Left, lower, root.Val) && helper(root.Right, root.Val, upper)
}
