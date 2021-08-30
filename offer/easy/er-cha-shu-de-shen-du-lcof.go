package easy

// 输入一棵二叉树的根节点，求该树的深度。从根节点到叶节点依次经过的节点（含根、叶节点）形成树的一条路径，最长路径的长度为树的深度。
// https://leetcode-cn.com/problems/er-cha-shu-de-shen-du-lcof/
func maxDepth(root *TreeNode) int {
	maxLevel := 0

	var dfs func(node *TreeNode, level int)
	dfs = func(node *TreeNode, level int) {
		if node == nil {
			if level > maxLevel {
				maxLevel = level
			}
			return
		}
		dfs(node.Right, level+1)
		dfs(node.Left, level+1)
	}

	dfs(root,1)

	return maxLevel
}
