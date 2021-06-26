package array_list

import "sort"

// 给你两个有序整数数组 nums1 和 nums2，请你将 nums2 合并到 nums1 中，使 nums1 成为一个有序数组。
//
//初始化 nums1 和 nums2 的元素数量分别为 m 和 n 。你可以假设 nums1 的空间大小等于 m + n，这样它就有足够的空间保存来自 nums2 的元素。
// https://leetcode-cn.com/problems/merge-sorted-array/
func mergeM1(nums1 []int, m int, nums2 []int, n int)  {
	for i := 0; i < n; i++ {
		nums1[m+i] = nums2[i]
	}

	sort.Ints(nums1)
}


func mergeE1(nums1 []int, m int, nums2 []int, n int)  {
	copy(nums1[m:], nums2)
	sort.Ints(nums1)
}