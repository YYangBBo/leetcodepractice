package advanced_search

func climbStairs(n int) int {
	p,q,r := 0,0,1

	for i := 0; i < n; i++ {
		q = p
		p = r
		r = p + q
	}

	return r
}
