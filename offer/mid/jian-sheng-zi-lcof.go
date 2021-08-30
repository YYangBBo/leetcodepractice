package mid

// 给你一根长度为 n 的绳子，请把绳子剪成整数长度的 m 段（m、n都是整数，n>1并且m>1），每段绳子的长度记为 k[0],k[1]...k[m-1] 。
//请问 k[0]*k[1]*...*k[m-1] 可能的最大乘积是多少？例如，当绳子的长度是8时，我们把它剪成长度分别为2、3、3的三段，此时得到的最大乘积是18。
//
//链接：https://leetcode-cn.com/problems/jian-sheng-zi-lcof
func cuttingRope(n int) int {
	dp := make([]int, n + 1)
	for i := 2; i <= n; i++ {
		curMax := 0
		for j := 1; j < i; j++ {
			curMax = max(curMax, max(j * (i - j), j * dp[i - j]))
		}
		dp[i] = curMax
	}
	return dp[n]
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}