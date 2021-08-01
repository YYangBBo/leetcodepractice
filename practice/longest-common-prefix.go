package practice

// 编写一个函数来查找字符串数组中的最长公共前缀。
// 如果不存在公共前缀，返回空字符串 ""。
// https://leetcode-cn.com/problems/longest-common-prefix/
func longestCommonPrefix(strs []string) string {
	ret := make([]byte, 0, len(strs[0]))

	for i := 0; ; i++ {
		var currByte byte
		for _, str := range strs {
			if i >= len(str) {
				return string(ret)
			}
			if currByte == 0 {
				currByte = str[i]
			} else if currByte != str[i] {
				return string(ret)
			}
		}
		ret = append(ret, currByte)
	}
}
