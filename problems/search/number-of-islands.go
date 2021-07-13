package search

// 给你一个由'1'（陆地）和 '0'（水）组成的的二维网格，请你计算网格中岛屿的数量。
//岛屿总是被水包围，并且每座岛屿只能由水平方向和/或竖直方向上相邻的陆地连接形成。
//此外，你可以假设该网格的四条边均被水包围。
// https://leetcode-cn.com/problems/number-of-islands/
func numIslands(grid [][]byte) int {
	num:=0
	var dfs func(i,j int)
	dfs= func(i,j int){
		if i<len(grid)&&i>=0&&j<len(grid[0])&&j>=0&&grid[i][j]=='1'{
			grid[i][j]=0
			dfs(i,j+1)
			dfs(i,j-1)
			dfs(i-1,j)
			dfs(i+1,j)
		}
	}
	for i:=0;i<len(grid[0]);i++{
		for j:=0;j<len(grid);j++{
			if grid[j][i]=='1'{
				num++
				dfs(j,i)
			}
		}
	}
	return num
}
