package dynamic_planning

// 给你一个整数数组 nums ，请你找出数组中乘积最大的连续子数组（该子数组中至少包含一个数字）
//并返回该子数组所对应的乘积。
// https://leetcode-cn.com/problems/maximum-product-subarray/description/
func maxProduct(nums []int) int {
	maxF, minF, ans := nums[0], nums[0], nums[0]
	for i := 1; i < len(nums); i++ {
		mx, mn := maxF, minF
		maxF = max(mx * nums[i], max(nums[i], mn * nums[i]))
		minF = min(mn * nums[i], min(nums[i], mx * nums[i]))
		ans = max(maxF, ans)
	}
	return ans
}