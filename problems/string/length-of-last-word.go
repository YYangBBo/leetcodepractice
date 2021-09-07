package string

import "strings"

// https://leetcode-cn.com/problems/length-of-last-word/
func lengthOfLastWord(s string) int {
	newS := strings.TrimSpace(s)
	count := 0
	for i := len(newS) - 1; i >= 0; i-- {
		if newS[i] != ' ' {
			count++
		} else {
			break
		}
	}

	return count
}
