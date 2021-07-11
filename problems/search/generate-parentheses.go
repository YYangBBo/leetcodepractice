package search

// 数字 n 代表生成括号的对数，请你设计一个函数，用于能够生成所有可能的并且 有效的 括号组合。
// https://leetcode-cn.com/problems/generate-parentheses/
func generateParenthesis(n int) []string {
	ans := make([]string, 0)

	var genSub func(left, right int, s string)
	genSub = func(left, right int, s string) {
		if len(s) == n*2 {
			ans = append(ans, s)
		}

		if left < n {
			genSub(left+1, right, s+"(")
		}

		if left > right {
			genSub(left, right+1, s+")")
		}
	}
	genSub(0, 0, "")

	return ans
}
