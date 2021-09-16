package code

// https://leetcode-cn.com/problems/valid-parentheses/
func isValid(s string) bool {
	sLen := len(s)

	if sLen%2 == 1 {
		return false
	}

	pairs := map[byte]byte{
		')': '(',
		']': '[',
		'}': '{',
	}
	stack := make([]byte, 0)

	for _, i2 := range s {
		if p, isExist := pairs[byte(i2)]; isExist {
			if len(stack) > 0 && p == stack[len(stack)-1] {
				stack = stack[:len(stack)-1]
			} else {
				return false
			}
		} else {
			stack = append(stack, byte(i2))
		}
	}

	return len(stack) == 0
}
