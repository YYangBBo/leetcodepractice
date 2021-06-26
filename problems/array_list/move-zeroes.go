package array_list


// 给定一个数组 nums，编写一个函数将所有 0 移动到数组的末尾，同时保持非零元素的相对顺序。
// https://leetcode-cn.com/problems/move-zeroes/
func moveZeroes(nums []int)  {
	lastZeroIndex := 0

	for i, num := range nums {
		if num != 0 {
			nums[lastZeroIndex],nums[i] = nums[i],nums[lastZeroIndex]
			lastZeroIndex ++
		}
	}
}
