package array_list

// 给你一个有序数组 nums ，请你 原地 删除重复出现的元素，使每个元素 只出现一次 ，返回删除后数组的新长度。
//
//不要使用额外的数组空间，你必须在 原地 修改输入数组 并在使用 O(1) 额外空间的条件下完成。
// https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array/
func RemoveDuplicatesM1(nums []int) int {
	if len(nums)== 0 {
		return 0
	}

	currIndex := 1
	for i := 0; i < len(nums)-1; i++ {
		if nums[i] != nums[i+1] {
			nums[currIndex] = nums[i+1]
			currIndex++
		}
	}
	return currIndex
}

