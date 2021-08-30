package easy

import "sort"

// 从扑克牌中随机抽5张牌，判断是不是一个顺子，即这5张牌是不是连续的。2～10为数字本身，A为1，J为11，Q为12，K为13，而大、小王为 0 ，可以看成任意数字。A 不能视为 14。
//
//链接：https://leetcode-cn.com/problems/bu-ke-pai-zhong-de-shun-zi-lcof
func isStraight(nums []int) bool {
	sort.Ints(nums)

	zeroCount := 0
	for i := 0; i < len(nums)-1; i++ {
		if nums[i] == 0 {
			zeroCount++
			continue
		}
		if nums[i+1] == nums[i] {
			return false
		}
		zeroCount -= nums[i+1] - nums[i] - 1
	}

	return zeroCount >= 0
}
