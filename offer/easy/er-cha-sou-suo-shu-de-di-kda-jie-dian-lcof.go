package easy

// 给定一棵二叉搜索树，请找出其中第k大的节点。
// https://leetcode-cn.com/problems/er-cha-sou-suo-shu-de-di-kda-jie-dian-lcof/
func kthLargest(root *TreeNode, k int) int {
	nodes := make([]int,0)

	var dfs func(node *TreeNode)
	dfs = func(node *TreeNode) {
		if node != nil {
			dfs(node.Left)
			nodes = append(nodes, node.Val)
			if len(nodes) > k {
				return
			}
			dfs(node.Right)
		}
	}

	dfs(root)

	return nodes[len(nodes)-1]
}
