package recursion

// 给定一个二叉树，找出其最大深度。
//二叉树的深度为根节点到最远叶子节点的最长路径上的节点数。
//说明: 叶子节点是指没有子节点的节点。
// https://leetcode-cn.com/problems/maximum-depth-of-binary-tree/
func maxDepth(root *TreeNode) int {
	max := 0

	var maxDepthSub func(node *TreeNode, depth int)
	maxDepthSub = func(node *TreeNode, depth int) {
		if depth > max {
			max = depth
		}

		if node != nil {
			maxDepthSub(node.Left, depth+1)
			maxDepthSub(node.Right, depth+1)
		}
	}

	maxDepthSub(root, 0)

	return max
}
