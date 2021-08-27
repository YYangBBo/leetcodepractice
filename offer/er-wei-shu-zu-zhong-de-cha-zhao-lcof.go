package offer

import "sort"

// 在一个 n * m 的二维数组中，每一行都按照从左到右递增的顺序排序，每一列都按照从上到下递增的顺序排序。请完成一个高效的函数，输入这样的一个二维数组和一个整数，判断数组中是否含有该整数。
//链接：https://leetcode-cn.com/problems/er-wei-shu-zu-zhong-de-cha-zhao-lcof
func findNumberIn2DArray(matrix [][]int, target int) bool {
	if len(matrix) == 0 {
		return false
	}

	m, n := len(matrix), len(matrix[0])
	i, j := 0, 0

	for i < m && j < n {
		if matrix[i][j] == target {
			return true
		}

		if matrix[i][j] < target && j < n-1 {
			j++
		} else if matrix[i][j] < target && j == n-1 {
			i++
			j = 0
		} else if matrix[i][j] > target && j > 0 {
			i++
			j = 0
		} else {
			i++
		}
	}

	return false
}

func findNumberIn2DArraym2(matrix [][]int, target int) bool {
	for _, ints := range matrix {
		index := sort.SearchInts(ints, target)
		if index < len(ints) && ints[index] == target {
			return true
		}
	}

	return false
}
