package offer

// 输入一个矩阵，按照从外向里以顺时针的顺序依次打印出每一个数字。
func SpiralOrder(matrix [][]int) []int {
	m := len(matrix)
	x, y := 0, 0

	ret := make([]int, 0, m*m)
	for i := 0; i < m/2+1; i++ {
		// 往前走
		for ; y < m; y++ {
			ret = append(ret, matrix[x][y])
		}
		y--

		// 往下走
		for ; x < m; x++ {
			ret = append(ret, matrix[x][y])
		}
		x--

		// 往左走
		for ; y >= i; y-- {
			ret = append(ret, matrix[x][y])
		}
		y++

		// 往上走
		for ; x >= i; x-- {
			ret = append(ret, matrix[x][y])
		}
		x++

		x, y = i, i
	}

	return ret
}
