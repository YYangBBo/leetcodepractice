package recursion

// 根据一棵树的前序遍历与中序遍历构造二叉树。
//注意:
//你可以假设树中没有重复的元素。
// https://leetcode-cn.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/
// 题解：https://leetcode-cn.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/solution/xiang-xi-tong-su-de-si-lu-fen-xi-duo-jie-fa-by--22/
func buildTreeE1(preorder []int, inorder []int) *TreeNode {
	if len(preorder) == 0 {
		return nil
	}
	root := &TreeNode{preorder[0], nil, nil}
	i := 0
	for ; i < len(inorder); i++ {
		if inorder[i] == preorder[0] {
			break
		}
	}
	root.Left = buildTreeE1(preorder[1:len(inorder[:i])+1], inorder[:i])
	root.Right = buildTreeE1(preorder[len(inorder[:i])+1:], inorder[i+1:])
	return root
}
