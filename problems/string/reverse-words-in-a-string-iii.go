package string

import "strings"

// https://leetcode-cn.com/problems/reverse-words-in-a-string-iii/
func reverseWordsiii(s string) string {
	words := strings.Split(s," ")

	for i, i2 := range words {
		currWord := []byte(i2)
		currWordLen := len(currWord)

		for j := 0; j < currWordLen>>1; j++ {
			currWord[j],currWord[currWordLen-j-1] = currWord[currWordLen-j-1],currWord[j]
		}
		words[i] = string(currWord)
	}

	return strings.Join(words," ")
}
