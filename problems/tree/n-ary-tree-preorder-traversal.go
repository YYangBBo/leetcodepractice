package tree

//var ret []int
func preorder(root *Node) []int {
	ret = make([]int, 0)
	if root != nil {
		preorderSub(root)
	}
	return ret
}

func preorderSub(node *Node) {
	if node != nil {
		ret = append(ret, node.Val)
		for _, child := range node.Children {
			preorderSub(child)
		}
	}
}
