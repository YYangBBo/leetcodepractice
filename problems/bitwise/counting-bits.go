package bitwise

// 给定一个非负整数 num。对于 0 ≤ i ≤ num 范围中的每个数字 i ，计算其二进制数中的 1 的数目并将它们作为数组返回。
// https://leetcode-cn.com/problems/counting-bits
func countBits(n int) []int {
	ret := make([]int,n+1)
	for i := 0; i <= n; i++ {
		count := 0
		for j := i; j > 0; j &= (j - 1) {
			count++
		}
		ret[i] = count
	}

	return ret
}
