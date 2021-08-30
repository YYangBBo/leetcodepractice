package easy

// 数组中有一个数字出现的次数超过数组长度的一半，请找出这个数字。
//你可以假设数组是非空的，并且给定的数组总是存在多数元素。
// https://leetcode-cn.com/problems/shu-zu-zhong-chu-xian-ci-shu-chao-guo-yi-ban-de-shu-zi-lcof/
func majorityElement(nums []int) int {
	me,count := nums[0],0

	for _, num := range nums {
		if me == num{
			count++
		}else {
			count--
		}

		if count == 0 {
			me = num
			count++
		}
	}
	
	return me
}
