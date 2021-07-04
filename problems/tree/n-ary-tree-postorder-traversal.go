package tree

type Node struct {
	Val      int
	Children []*Node
}

// 给定一个 N 叉树，返回其节点值的 后序遍历 。
//N 叉树 在输入中按层序遍历进行序列化表示，每组子节点由空值 null 分隔（请参见示例）。
// https://leetcode-cn.com/problems/n-ary-tree-postorder-traversal/
// var ret []int
func postorder(root *Node) []int {
	ret = make([]int, 0)
	if root != nil {
		postorderSub(root)
	}
	return ret
}

func postorderSub(node *Node) {
	if node != nil {
		for _, child := range node.Children {
			postorderSub(child)
		}
		ret = append(ret, node.Val)
	}
}
