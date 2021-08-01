package dynamic_planning

// 给定一个三角形 triangle ，找出自顶向下的最小路径和。
//每一步只能移动到下一行中相邻的结点上。相邻的结点 在这里指的是 下标 与 上一层结点下标 相同或者等于 上一层结点下标 + 1 的两个结点。也就是说，如果正位于当前行的下标 i ，那么下一步可以移动到下一行的下标 i 或 i + 1 。
//链接：https://leetcode-cn.com/problems/triangle
func minimumTotal(triangle [][]int) int {
	a := make([]int, len(triangle)+1, len(triangle)+1)

	for i := len(triangle) - 1; i >= 0; i-- {
		for j := 0; j < len(triangle[i]); j++ {
			a[j] = min(a[j], a[j+1]) + triangle[i][j]
		}
	}

	return a[0]
}

func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}
