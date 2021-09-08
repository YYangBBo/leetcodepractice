package string

// https://leetcode-cn.com/problems/reverse-string-ii/
func reverseStr(s string, k int) string {
	ret := []byte(s)
	mid := k >> 1
	if k > len(s) && len(s) > 1 {
		k = len(s)
	}

	for i := 0; i < len(ret); i += k * 2 {
		if i+k > len(s) {
			break
		}
		for j := 0; j < mid; j++ {
			ret[i+j], ret[i+k-j-1] = ret[i+k-j-1], ret[i+j]
		}
	}

	return string(ret)
}
