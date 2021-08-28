package offer

import (
	"fmt"
	"strconv"
)

// 地上有一个m行n列的方格，从坐标 [0,0] 到坐标 [m-1,n-1] 。
//一个机器人从坐标 [0, 0] 的格子开始移动，它每次可以向左、右、上、下移动一格（不能移动到方格外），也不能进入行坐标和列坐标的数位之和大于k的格子。
//例如，当k为18时，机器人能够进入方格 [35, 37] ，因为3+5+3+7=18。
//但它不能进入方格 [35, 38]，因为3+5+3+8=19。请问该机器人能够到达多少个格子？
//链接：https://leetcode-cn.com/problems/ji-qi-ren-de-yun-dong-fan-wei-lcof
func movingCount(m int, n int, k int) int {
	visited := make(map[string]bool)

	var dfs func(x int, y int)
	dfs = func(x int, y int) {
		if get(x)+get(y) > k || x > m-1 || y > n-1 {
			return
		}
		if _, exist := visited[strconv.Itoa(x)+strconv.Itoa(y)]; exist {
			return
		}

		visited[fmt.Sprintf("%d+%d", x, y)] = true

		dfs(x+1, y)
		dfs(x, y+1)

		return
	}

	dfs(0, 0)

	return len(visited)
}

func get(x int) int {
	res := 0
	for ; x > 0; x /= 10 {
		res += x % 10
	}
	return res
}
