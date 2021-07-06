package recursion

import "math"

// 给定一个二叉树，找出其最小深度。
//最小深度是从根节点到最近叶子节点的最短路径上的节点数量。
//说明：叶子节点是指没有子节点的节点。
// https://leetcode-cn.com/problems/minimum-depth-of-binary-tree/
func minDepth(root *TreeNode) int {
	if root == nil {
		return 0
	}

	if root.Left == nil && root.Right == nil {
		return 1
	}

	min := math.MaxInt16
	var minDepthSub func(node *TreeNode,depth int)
	minDepthSub = func(node *TreeNode,depth int) {
		if node != nil {
			if node.Left == nil && node.Right == nil && depth < min {
				min = depth
			}
			minDepthSub(node.Left,depth+1)
			minDepthSub(node.Right,depth+1)
		}
	}
	minDepthSub(root,1)

	return min
}
