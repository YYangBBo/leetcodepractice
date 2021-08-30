package easy

// 在字符串 s 中找出第一个只出现一次的字符。如果没有，返回一个单空格。 s 只包含小写字母。
// https://leetcode-cn.com/problems/di-yi-ge-zhi-chu-xian-yi-ci-de-zi-fu-lcof/
func firstUniqChar(s string) byte {
	sMap := make(map[int32]int)

	for _, i2 := range s {
		sMap[i2] = sMap[i2] + 1
	}

	for _, i2 := range s {
		if sMap[i2] == 1 {
			return byte(i2)
		}
	}

	return ' '
}
