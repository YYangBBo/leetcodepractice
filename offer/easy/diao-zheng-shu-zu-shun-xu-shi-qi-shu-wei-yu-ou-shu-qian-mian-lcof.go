package easy

// 输入一个整数数组，实现一个函数来调整该数组中数字的顺序，使得所有奇数位于数组的前半部分，所有偶数位于数组的后半部分。
// https://leetcode-cn.com/problems/diao-zheng-shu-zu-shun-xu-shi-qi-shu-wei-yu-ou-shu-qian-mian-lcof/
func exchange(nums []int) []int {
	left, right := 0, len(nums)-1

	for left < right {
		if nums[left]%2 == 1 {
			left++
		} else if nums[right]%2 == 0 {
			right--
		} else {
			nums[left], nums[right] = nums[right], nums[left]
			left++
			right--
		}
	}

	return nums
}
