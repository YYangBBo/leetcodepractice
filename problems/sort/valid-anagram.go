package sort

// 给定两个字符串 s 和 t ，编写一个函数来判断 t 是否是 s 的字母异位词。
//注意：若,s 和 t,中每个字符出现的次数都相同，则称,s 和 t,互为字母异位词。
//
//链接：https://leetcode-cn.com/problems/valid-anagram
func isAnagram(s string, t string) bool {
	if len(s) != len(t) {
		return false
	}

	sMap := make(map[rune]int)

	for _, i2 := range s {
		sMap[i2] += 1
	}

	for _, i2 := range t {
		sMap[i2] -= 1
		if sMap[i2] < 0 {
			return false
		}
	}

	return true
}
