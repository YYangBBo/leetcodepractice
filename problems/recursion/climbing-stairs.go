package recursion

// 假设你正在爬楼梯。需要 n 阶你才能到达楼顶。
//每次你可以爬 1 或 2 个台阶。你有多少种不同的方法可以爬到楼顶呢？
// https://leetcode-cn.com/problems/climbing-stairs/
func ClimbStairs(n int) int {
	return climbStairsSub(n)
}

func climbStairsSub(n int) int {
	if n == 1{
		return 1
	}
	if n == 2 {
		return 2
	}

	return  climbStairsSub(n-1) + climbStairsSub(n-2)
}

func ClimbStairsP1(n int) int {
	r,p,q := 0,0,1

	for i := 0; i <= n; i++ {
		p = q
		q = r
		r = p + q
	}

	return r
}