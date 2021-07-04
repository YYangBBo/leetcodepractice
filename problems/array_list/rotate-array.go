package array_list

// 给定一个数组，将数组中的元素向右移动 k 个位置，其中 k 是非负数。
// https://leetcode-cn.com/problems/rotate-array/
func rotateE1(nums []int, k int) {
	k %= len(nums)
	reverse(nums)
	reverse(nums[:k])
	reverse(nums[k:])
}

func reverse(a []int) {
	for i, n := 0, len(a); i < n/2; i++ {
		a[i], a[n-1-i] = a[n-1-i], a[i]
	}
}
