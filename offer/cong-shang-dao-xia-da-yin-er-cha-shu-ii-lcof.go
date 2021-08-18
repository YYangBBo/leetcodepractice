package offer

// 从上到下按层打印二叉树，同一层的节点按从左到右的顺序打印，每一层打印到一行。
//例如:
//给定二叉树: [3,9,20,null,null,15,7],
// https://leetcode-cn.com/problems/cong-shang-dao-xia-da-yin-er-cha-shu-ii-lcof/
func levelOrder(root *TreeNode) [][]int {
	if root == nil {
		return [][]int{}
	}

	ret := make([][]int, 0)

	nextLevel := []*TreeNode{root}
	for len(nextLevel) > 0 {
		currLevel := nextLevel
		nextLevel = make([]*TreeNode, 0)
		retItem := make([]int, 0)

		for _, node := range currLevel {
			retItem = append(retItem, node.Val)
			if node.Left != nil {
				nextLevel = append(nextLevel, node.Left)
			}
			if node.Right != nil {
				nextLevel = append(nextLevel, node.Right)
			}
		}

		ret = append(ret, retItem)
	}

	return ret
}
