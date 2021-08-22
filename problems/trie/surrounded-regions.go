package trie

// 给你一个 m x n 的矩阵 board ，由若干字符 'X' 和 'O' ，找到所有被 'X' 围绕的区域，并将这些区域里所有的 'O' 用 'X' 填充。
func solve(board [][]byte) {
	m, n := len(board), len(board[0])

	var dfs func(i, j int)
	dfs = func(i, j int) {
		if i < 0 || j < 0 || i >= m || j >= n || board[i][j] != 'O' {
			return
		}

		board[i][j] = 'A'
		dfs(i+1, j)
		dfs(i, j+1)
		dfs(i-1, j)
		dfs(i, j-1)
	}

	// 遍历四周元素是否为‘O’
	for i := 0; i < m; i++ {
		dfs(i, 0)
		dfs(i, n-1)
	}
	for j := 0; j < n; j++ {
		dfs(0, j)
		dfs(m-1, j)
	}

	// 把剩下的‘O’标记为'X'
	for i := 0; i < m; i++ {
		for j := 0; j < n; j++ {
			switch board[i][j] {
			case 'O':
				board[i][j] = 'X'
			case 'A':
				board[i][j] = 'O'
			}
		}
	}
}
