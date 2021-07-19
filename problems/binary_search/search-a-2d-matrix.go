package binary_search

// 编写一个高效的算法来判断m x n矩阵中，是否存在一个目标值。该矩阵具有如下特性：
//每行中的整数从左到右按升序排列。
//每行的第一个整数大于前一行的最后一个整数。
//链接：https://leetcode-cn.com/problems/search-a-2d-matrix
func searchMatrix(matrix [][]int, target int) bool {
	if len(matrix) == 0 {
		return false
	}

	m,n := len(matrix),len(matrix[0])
	left, right := 0,m*n-1

	for left <= right {
		mid := left + (right - left)/2

		if matrix[mid/n][mid%n] == target {
			return true
		}

		if target < matrix[mid/n][mid%n]{
			right = mid - 1
		}else {
			left = mid + 1
		}
	}

	return false
}
