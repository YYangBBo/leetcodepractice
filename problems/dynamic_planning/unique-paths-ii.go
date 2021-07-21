package dynamic_planning

func uniquePathsWithObstacles(obstacleGrid [][]int) int {
	m,n := len(obstacleGrid),len(obstacleGrid[0])
	dp := make([]int,len(obstacleGrid[0]))

	for i := range dp {
		dp[i] = 1
	}

	for i := 1; i < m; i++ {
		for j := 1; j < n; j++ {
			if obstacleGrid[i][j] == 1 {
				continue
			}

			dp[j] += dp[j-1]
		}
	}

	return dp[n-1]
}
