package advanced_dp

// https://leetcode-cn.com/problems/unique-paths/
func uniquePaths(m int, n int) int {
	dp := make([]int,n)

	for i, _ := range dp {
		dp [i] = 1
	}

	for i := 1; i < m; i++ {
		for j := 1; j < n; j++ {
			dp[j] += dp[j-1]
		}
	}

	return dp[n-1]
}
