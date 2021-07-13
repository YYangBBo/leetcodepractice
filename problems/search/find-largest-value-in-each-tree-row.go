package search

import "math"

// 您需要在二叉树的每一行中找到最大的值。
// https://leetcode-cn.com/problems/find-largest-value-in-each-tree-row/
func largestValues(root *TreeNode) []int {
	if root == nil {
		return []int{}
	}
	ans := make([]int, 0)
	queue := make([]*TreeNode, 0)
	queue = append(queue, root)

	for len(queue) > 0 {
		currQueue := queue

		currMax := math.MinInt32
		queue = make([]*TreeNode, 0)
		for _, node := range currQueue {
			if currMax < node.Val {
				currMax = node.Val
			}
			if node.Left != nil {
				queue = append(queue, node.Left)
			}

			if node.Right != nil {
				queue = append(queue, node.Right)
			}
		}
		ans = append(ans, currMax)
	}

	return ans
}
