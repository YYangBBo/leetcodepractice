package string

func reverseOnlyLetters(s string) string {
	words := []byte(s)
	left, right := 0, len(s)-1

	for left < right {
		if isLetter(words[left]) && isLetter(words[right]) {
			words[left], words[right] = words[right], words[left]
			left++
			right--
		} else if !isLetter(words[left]) {
			left++
		} else if !isLetter(words[right]) {
			right--
		}
	}

	return string(words)
}

func isLetter(s byte) bool {
	if (s >= 'a' && s <= 'z') || (s >= 'A' && s <= 'Z') {
		return true
	} else {
		return false
	}
}
