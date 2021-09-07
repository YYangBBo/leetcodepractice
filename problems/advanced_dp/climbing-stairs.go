package advanced_dp

// 假设你正在爬楼梯。需要 n 阶你才能到达楼顶。
//每次你可以爬 1 或 2 个台阶。你有多少种不同的方法可以爬到楼顶呢？
//注意：给定 n 是一个正整数。
// https://leetcode-cn.com/problems/climbing-stairs/
func climbStairs(n int) int {
	if n < 2 {
		return 1
	}

	return climbStairs(n-1) + climbStairs(n-2)
}
