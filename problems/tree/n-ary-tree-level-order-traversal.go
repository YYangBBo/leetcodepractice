package tree

// 给定一个 N 叉树，返回其节点值的层序遍历。（即从左到右，逐层遍历）。
//树的序列化输入是用层序遍历，每组子节点都由 null 值分隔（参见示例）。
// https://leetcode-cn.com/problems/n-ary-tree-level-order-traversal/
var retMap map[int][]int

func levelOrder(root *Node) [][]int {
	retMap = make(map[int][]int)
	if root != nil {
		levelOrderSub(root, 0)
	}

	retSlice := make([][]int, len(retMap), len(retMap))
	for level, ints := range retMap {
		retSlice[level] = ints
	}

	return retSlice
}

func levelOrderSub(node *Node, currLevel int) {
	nextLevel := currLevel + 1

	for _, child := range node.Children {
		levelOrderSub(child, nextLevel)
	}

	if _, exist := retMap[currLevel]; !exist {
		retMap[currLevel] = make([]int, 0)
	}
	retMap[currLevel] = append(retMap[currLevel], node.Val)
}
