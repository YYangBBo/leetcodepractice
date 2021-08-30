package mid

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

// 输入某二叉树的前序遍历和中序遍历的结果，请构建该二叉树并返回其根节点。
//假设输入的前序遍历和中序遍历的结果中都不含重复的数字。
// https://leetcode-cn.com/problems/zhong-jian-er-cha-shu-lcof/
func buildTree(preorder []int, inorder []int) *TreeNode {
	if len(preorder) == 0 {
		return nil
	}

	ret := &TreeNode{
		Val:   preorder[0],
		Left:  nil,
		Right: nil,
	}

	rootNode := 0
	// 找到preorder和inorder相等的元素
	for i := 0; i < len(inorder); i++ {
		if inorder[i] == preorder[0]{
			rootNode = i
			break
		}
	}

	ret.Left = buildTree(preorder[1:rootNode+1],inorder[:rootNode])
	ret.Right = buildTree(preorder[rootNode+1:],inorder[rootNode+1:])

	return ret
}
