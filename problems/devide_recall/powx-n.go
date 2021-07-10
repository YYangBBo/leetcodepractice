package devide_recall

// 实现 pow(x, n) ，即计算 x 的 n 次幂函数（即，xn）。
// https://leetcode-cn.com/problems/powx-n/
func myPowM1(x float64, n int) float64 {
	if n == 0 {
		return 1
	}

	absN := n
	if n < 0 {
		absN = -n
	}

	pow := x
	for i := 0; i < absN-1; i++ {
		pow = pow * x
	}

	if n < 0 {
		return 1 / pow
	} else {
		return pow
	}
}

func myPowE1(x float64, n int) float64 {
	if n == 0 {
		return 1
	}

	if n < 0 {
		x = 1 / x
		n = -n
	}

	var powSub func(x float64, n int) float64
	powSub = func(x float64, n int) float64 {
		if n == 0 {
			return 1
		}

		pow := powSub(x, n/2)
		if n%2 == 1 {
			pow = pow * pow * x
		} else {
			pow = pow * pow
		}

		return pow
	}

	return powSub(x, n)
}
