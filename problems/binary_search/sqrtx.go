package binary_search

// 实现int sqrt(int x)函数。
//计算并返回x的平方根，其中x 是非负整数。
//由于返回类型是整数，结果只保留整数的部分，小数部分将被舍去。
//链接：https://leetcode-cn.com/problems/sqrtx
func mySqrt(x int) int {
	if x == 0 || x == 1 {
		return x
	}

	left, right := 0, x/2
	for left < right {
		mid := left + (right-left)/2
		if mid*mid > x {
			right = mid - 1
		} else {
			left = mid + 1
		}
	}

	return right
}

// 牛顿迭代法
func mySqrtE1(x int) int {
	r := x
	for r*r > x {
		r = (r + x/r) /2
	}

	return r
}