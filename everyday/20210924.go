package everyday

type Node struct {
	Val   int
	Prev  *Node
	Next  *Node
	Child *Node
}

func flatten(root *Node) *Node {
	if root == nil {
		return nil
	}

	var unfold func(node *Node) *Node
	unfold = func(node *Node) *Node {
		for {
			if node.Child != nil {
				childRear := unfold(node.Child)
				childRear.Next = node.Next
				if node.Next != nil {
					node.Next.Prev = childRear
				}
				node.Next = node.Child
				node.Child.Prev = node
				node.Child = nil
			}
			if node.Next != nil {
				node = node.Next
			} else {
				return node
			}
		}
	}

	tail := root
	unfold(root)

	return tail
}
