package array_list

// 假设你正在爬楼梯。需要 n 阶你才能到达楼顶。
//
// 每次你可以爬 1 或 2 个台阶。你有多少种不同的方法可以爬到楼顶呢？
func climbStairs(n int) int {
	p, q, r := 0, 0, 1
	for i := 1; i <= n; i++ {
		p = q
		q = r
		r = p + q
	}
	return r
}

func climbStairsP1(n int) int {
	q, p, r := 0, 0, 1
	for i := 1; i <= n; i++ {
		p = q
		q = r
		r = p + q
	}

	return r
}

func climbStairsP2(n int) int {
	p, q, r := 0, 0, 1

	for i := 0; i < n; i++ {
		p = q
		q = r
		r = p + q
	}

	return r
}
