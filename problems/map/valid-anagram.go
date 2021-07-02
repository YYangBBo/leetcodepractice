package _map

// 给定两个字符串 s 和 t ，编写一个函数来判断 t 是否是 s 的字母异位词。
// https://leetcode-cn.com/problems/valid-anagram/
func isAnagram(s string, t string) bool {
	if len(s) != len(t) {
		return false
	}

	mapObj := make(map[int32]int, len(s))

	for _, b := range s {
		mapObj[b]++
	}

	for _, b := range t {
		mapObj[b]--
		if mapObj[b] < 0 {
			return false
		}
	}

	return true
}
