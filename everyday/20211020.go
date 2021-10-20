package everyday

// https://leetcode-cn.com/problems/minimum-moves-to-equal-array-elements/
func minMoves(nums []int) (ans int) {
	min := nums[0]
	for _, num := range nums[1:] {
		if num < min {
			min = num
		}
	}
	for _, num := range nums {
		ans += num - min
	}
	return
}