package string

// https://leetcode-cn.com/problems/valid-palindrome-ii/
func validPalindrome(s string) bool {
	var str = []byte(s)
	for i, j := 0, len(str)-1; i < j; {
		if str[i] != str[j] {
			return isPalindrome1(str,i+1,j)||isPalindrome1(str,i,j-1)
		}
		i++
		j--
	}
	return true
}

func isPalindrome1(str []byte, l, r int)bool {
	for ; l < r;  {
		if str[l]!=str[r] {
			return false
		}
		l++
		r--
	}
	return true
}