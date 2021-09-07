package string

// https://leetcode-cn.com/problems/to-lower-case/
func toLowerCase(s string) string {
	ret := make([]byte,len(s))
	for i, i2 := range s {
		if i2 >= 'A' && i2 <= 'Z' {
			ret[i] = byte(i2+32)
		}else {
			ret[i] = byte(i2)
		}
	}

	return string(ret)
}
