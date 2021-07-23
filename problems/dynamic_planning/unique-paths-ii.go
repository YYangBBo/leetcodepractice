package dynamic_planning

func uniquePathsWithObstacles(obstacleGrid [][]int) int {
	m, n := len(obstacleGrid), len(obstacleGrid[0])
	f := make([]int, n)
	if obstacleGrid[0][0] == 0 {
		f[0] = 1
	}

	for i := 0; i < m; i++ {
		for j := 0; j < n; j++ {
			if obstacleGrid[i][j] == 1 {
				f[j] = 0
				continue
			}
			if j-1 >= 0 {
				f[j] += f[j-1]
			}
		}
	}
	return f[n-1]

}
