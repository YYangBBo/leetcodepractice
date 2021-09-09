package string

import "strings"

// https://leetcode-cn.com/problems/reverse-words-in-a-string/
func reverseWords(s string) string {
	allWords := make([]string, 0)

	wordsLen := 0
	var currWords []byte
	for i, i2 := range s {
		if (i2 >= 'A' && i2 <= 'Z') || (i2 >= 'a' && i2 <= 'z') || (i2 >= '0' && i2 <= '9') {
			if wordsLen == 0 {
				currWords = make([]byte, 0)
			}
			currWords = append(currWords, byte(i2))
			wordsLen++

			if i == len(s)-1 {
				allWords = append(allWords, string(currWords))
			}

		} else {
			if wordsLen > 0 {
				allWords = append(allWords, string(currWords))
			}
			wordsLen = 0
			currWords = nil
		}
	}

	// 翻转
	allWordsLen := len(allWords)
	mid := allWordsLen >> 1
	for i := 0; i < mid; i++ {
		allWords[i], allWords[allWordsLen-i-1] = allWords[allWordsLen-i-1], allWords[i]
	}

	return strings.Join(allWords, " ")
}
