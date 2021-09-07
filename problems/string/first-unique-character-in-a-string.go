package string

// https://leetcode-cn.com/problems/first-unique-character-in-a-string/
func firstUniqChar(s string) int {
	ss := make([]int,26)
	for _, i2 := range s {
		ss[i2-'a'] += 1
	}

	for i, i2 := range s {
		if ss[i2-'a'] == 1 {
			return i
		}
	}

	return -1
}
