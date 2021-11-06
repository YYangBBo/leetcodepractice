package everyday

import "sort"

// 给定一个包含 [0, n] 中 n 个数的数组 nums ，找出 [0, n] 这个范围内没有出现在数组中的那个数。
func missingNumber(nums []int) int {
	sort.Ints(nums)

	for i, num := range nums {
		if i != num {
			return i
		}
	}

	return len(nums)
}
