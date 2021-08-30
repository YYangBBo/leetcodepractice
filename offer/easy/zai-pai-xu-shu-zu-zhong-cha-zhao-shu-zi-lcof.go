package easy

import "sort"

// 统计一个数字在排序数组中出现的次数。
// https://leetcode-cn.com/problems/zai-pai-xu-shu-zu-zhong-cha-zhao-shu-zi-lcof/
func searchTarget(nums []int, target int) int {
	// 先使用二分找到target
	leftmost := sort.SearchInts(nums, target)
	if leftmost == len(nums) || nums[leftmost] != target {
		return 0
	}
	rightmost := sort.SearchInts(nums, target + 1) - 1
	return rightmost - leftmost + 1
}
