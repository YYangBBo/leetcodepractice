package sort

// 给定一个数组 nums ，如果 i < j 且 nums[i] > 2*nums[j] 我们就将 (i, j) 称作一个重要翻转对。
// 你需要返回给定数组中的重要翻转对的数量。
// https://leetcode-cn.com/problems/reverse-pairs/description/
func reversePairs(nums []int) int {
	n := len(nums)
	if n <= 1 {
		return 0
	}

	n1 := append([]int(nil), nums[:n/2]...)
	n2 := append([]int(nil), nums[n/2:]...)
	cnt := reversePairs(n1) + reversePairs(n2) // 递归完毕后，n1 和 n2 均为有序

	// 统计重要翻转对 (i,j) 的数量
	// 由于 n1 和 n2 均为有序，可以用两个指针同时遍历
	j := 0
	for _, v := range n1 {
		for j < len(n2) && v > 2*n2[j] {
			j++
		}
		cnt += j
	}

	// n1 和 n2 归并填入 nums
	p1, p2 := 0, 0
	for i := range nums {
		if p1 < len(n1) && (p2 == len(n2) || n1[p1] <= n2[p2]) {
			nums[i] = n1[p1]
			p1++
		} else {
			nums[i] = n2[p2]
			p2++
		}
	}
	return cnt
}