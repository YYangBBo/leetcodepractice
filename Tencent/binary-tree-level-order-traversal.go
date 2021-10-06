package Tencent

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

func levelOrder(root *TreeNode) [][]int {
	if root == nil {
		return [][]int{}
	}

	ret := make([][]int, 0)

	currNode := []*TreeNode{root}
	for len(currNode) > 0 {
		nextNode := make([]*TreeNode, 0)
		currVal := make([]int, 0)

		for _, node := range currNode {
			currVal = append(currVal, node.Val)
			if node.Left != nil {
				nextNode = append(nextNode, node.Left)
			}
			if node.Right != nil {
				nextNode = append(nextNode, node.Right)
			}
		}

		ret = append(ret, currVal)
		currNode = nextNode
	}

	return ret
}
