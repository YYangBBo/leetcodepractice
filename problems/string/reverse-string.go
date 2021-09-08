package string

func reverseString(s []byte)  {
	sLen := len(s)
	mid := sLen >> 1

	for i := 0; i < mid; i++ {
		s[i],s[sLen-i-1] = s[sLen-i-1],s[i]
	}
}
