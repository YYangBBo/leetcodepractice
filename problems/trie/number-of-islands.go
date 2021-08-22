package trie

// 给你一个由'1'（陆地）和 '0'（水）组成的的二维网格，请你计算网格中岛屿的数量。
//岛屿总是被水包围，并且每座岛屿只能由水平方向和/或竖直方向上相邻的陆地连接形成。
//此外，你可以假设该网格的四条边均被水包围。
//链接：https://leetcode-cn.com/problems/number-of-islands
func numIslands(grid [][]byte) int {
	m, n := len(grid), len(grid[0])

	var dfs func(x, y int)
	dfs = func(x, y int) {
		if x < 0 || y < 0 || x >= m || y >= n || grid[x][y] == '0' {
			return
		}

		grid[x][y] = '0'
		dfs(x, y+1)
		dfs(x+1, y)
		dfs(x-1, y)
		dfs(x, y-1)
	}

	count := 0
	for i := 0; i < m; i++ {
		for j := 0; j < n; j++ {
			if grid[i][j] == '1' {
				// 开始搜索
				dfs(i, j+1)
				dfs(i+1, j)
				dfs(i-1, j)
				dfs(i, j-1)

				count++
				grid[i][j] = '0'
			}
		}
	}

	return count
}

// 并查集
func numIslandsE1(grid [][]byte) int {
	m, n := len(grid), len(grid[0])

	var dfs func(x, y int)
	dfs = func(x, y int) {
		if x < 0 || y < 0 || x >= m || y >= n || grid[x][y] == '0' {
			return
		}

		grid[x][y] = '0'
		dfs(x, y+1)
		dfs(x+1, y)
		dfs(x-1, y)
		dfs(x, y-1)
	}

	count := 0
	for i := 0; i < m; i++ {
		for j := 0; j < n; j++ {
			if grid[i][j] == '1' {
				// 开始搜索
				dfs(i, j)
				count++
			}
		}
	}

	return count
}