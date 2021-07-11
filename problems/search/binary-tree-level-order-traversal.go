package search

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

// 给你一个二叉树，请你返回其按 层序遍历 得到的节点值。 （即逐层地，从左到右访问所有节点）。
// https://leetcode-cn.com/problems/binary-tree-level-order-traversal/
func levelOrderE1(root *TreeNode) [][]int {
	ret := [][]int{}
	if root == nil {
		return ret
	}
	q := []*TreeNode{root}
	for i := 0; len(q) > 0; i++ {
		ret = append(ret, []int{})
		p := []*TreeNode{}
		for j := 0; j < len(q); j++ {
			node := q[j]
			ret[i] = append(ret[i], node.Val)
			if node.Left != nil {
				p = append(p, node.Left)
			}
			if node.Right != nil {
				p = append(p, node.Right)
			}
		}
		q = p
	}
	return ret
}

// DFS
func levelOrderM1(root *TreeNode) [][]int {
	ans := make([][]int,0)

	var dfs func(node *TreeNode, level int)
	dfs = func(node *TreeNode, level int) {
		if node == nil {
			return
		}

		if len(ans)<=level{
			ans = append(ans, make([]int,0))
		}
		ans[level] = append(ans[level], node.Val)

		dfs(node.Left, level+1)
		dfs(node.Right, level+1)
	}
	dfs(root,0)

	return ans
}
