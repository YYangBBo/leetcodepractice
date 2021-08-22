package advanced_search

// 数字 n 代表生成括号的对数，请你设计一个函数，用于能够生成所有可能的并且 有效的 括号组合。
//有效括号组合需满足：左括号必须以正确的顺序闭合。
// https://leetcode-cn.com/problems/generate-parentheses/
func generateParenthesis(n int) []string {
	ret := make([]string,0)

	var gen func(left,right int,s string)
	gen = func(left,right int, s string) {
		if len(s) == n*2 {
			ret = append(ret, s)
			return
		}

		if left < n {
			gen(left+1,right,s+"(")
		}

		if right < left {
			gen(left,right+1,s+")")
		}
	}
	gen(1,0,"(")

	return ret
}
