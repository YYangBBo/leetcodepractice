package everyday

// https://leetcode-cn.com/problems/power-of-three/
func isPowerOfThree(n int) bool {
	for n > 0 && n % 3 == 0 {
		n %= 3
	}

	return n == 1
}
