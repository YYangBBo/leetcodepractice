package greedy

// 给定一个非负整数数组 nums ，你最初位于数组的 第一个下标 。
//数组中的每个元素代表你在该位置可以跳跃的最大长度。
//判断你是否能够到达最后一个下标。
// https://leetcode-cn.com/problems/jump-game/
func canJump(nums []int) bool {
	if len(nums)<=1{
		return true
	}
	dp:=make([]bool,len(nums))
	dp[0]=true
	for i:=1;i<len(nums);i++{
		for j:=i-1;j>=0;j--{
			if dp[j]&&nums[j]+j>=i{
				dp[i]=true
				break
			}
		}
	}
	return dp[len(nums)-1]
}
