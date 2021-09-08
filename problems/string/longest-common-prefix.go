package string

// https://leetcode-cn.com/problems/longest-common-prefix/description/
func longestCommonPrefix(strs []string) string {
	if len(strs) == 0 {
		return ""
	}

	if len(strs) == 1 {
		return strs[0]
	}

	ret := make([]byte, 0)
	for i := 0; i < len(strs[0]); i++ {
		curr := strs[0][i]
		for j := 1; j < len(strs); j++ {
			if i >= len(strs[j]) || strs[j][i] != curr {
				return string(ret)
			}
		}
		ret = append(ret, curr)
	}

	return string(ret)
}
