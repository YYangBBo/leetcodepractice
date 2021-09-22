package everyday

func lengthOfLastWord(s string) int {
	count := 0
	isFinish := false
	for i := len(s) - 1; i >= 0; i-- {
		if (s[i] >= 'a' && s[i] <= 'z') ||
			(s[i] >= 'A' && s[i] <= 'Z') {
			count++
			isFinish = true
			continue
		}

		if isFinish {
			break
		}
	}

	return count
}
