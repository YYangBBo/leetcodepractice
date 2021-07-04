package recursion

// 数字 n 代表生成括号的对数，请你设计一个函数，用于能够生成所有可能的并且 有效的 括号组合。
// https://leetcode-cn.com/problems/generate-parentheses/
func generateParenthesis(n int) []string {
	ret := make([]string,0,n*2)

	var generate func(left,right,n int,s string)
	generate = func(left, right, n int, s string) {
		// terminator
		if left==n && right==n {
			// filter the invalid s
			ret = append(ret, s)
			return
		}
		// process current logic : left ,right

		// drill down
		if left < n {
			generate(left+1,right,n,s+"(")
		}

		if left>right {
			generate(left,right+1,n,s+")")
		}

		// reverse states
	}

	generate(0,0,n,"")

	return ret
}
