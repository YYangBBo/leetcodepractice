package binary_search

// 给定一个 正整数 num ，编写一个函数，如果 num 是一个完全平方数，则返回 true ，否则返回 false 。
//进阶：不要 使用任何内置的库函数，如 sqrt 。
//链接：https://leetcode-cn.com/problems/valid-perfect-square
func isPerfectSquare(num int) bool {
	if num == 0 || num == 1 {
		return true
	}

	left, right := 0, num/2
	for left <= right {
		mid := left + (right - left) / 2
		if mid * mid > num {
			right = mid -1
		}else {
			left = mid + 1
		}
	}

	return right * right == num
}