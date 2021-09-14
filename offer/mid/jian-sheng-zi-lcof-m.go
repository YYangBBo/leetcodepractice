package mid

import "math"

// 给你一根长度为 n 的绳子，请把绳子剪成整数长度的 m 段（m、n都是整数，n>1并且m>1），每段绳子的长度记为 k[0],k[1]...k[m-1] 。
//请问 k[0]*k[1]*...*k[m-1] 可能的最大乘积是多少？例如，当绳子的长度是8时，我们把它剪成长度分别为2、3、3的三段，此时得到的最大乘积是18。
//
//链接：https://leetcode-cn.com/problems/jian-sheng-zi-lcof
func cuttingRope1(n int) int {
	if n < 3 {
		return n-1
	}

	subLen := n / 3
	lastSubLen := n % 3

	switch lastSubLen {
	case 0:
		return int(math.Pow(3,float64(subLen)))
	case 1:
		return int(math.Pow(3,float64(subLen-1))) * 4
	}

	return 0
}
