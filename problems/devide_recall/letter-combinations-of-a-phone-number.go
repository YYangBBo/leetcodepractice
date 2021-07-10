package devide_recall
var phoneMap map[string]string = map[string]string{
	"2": "abc",
	"3": "def",
	"4": "ghi",
	"5": "jkl",
	"6": "mno",
	"7": "pqrs",
	"8": "tuv",
	"9": "wxyz",
}
func letterCombinations(digits string) []string {
	letter := make([]string,0)
	for _, digit := range digits {
		letter = append(letter, phoneMap[string(digit)])
	}

	ans := make([]string,0)
	nums := len(letter)

	var combineSub func(s []byte,cur int)
	combineSub = func(s []byte, cur int) {
		if cur == nums {
			ans = append(ans, string(s))
			return
		}

		s = append(s, s[cur])
		combineSub(s,cur+1)

		s = s[:len(s)-1]
		combineSub(s,cur+1)
	}
	combineSub(make([]byte,0),0)

	return ans
}


var combinations []string

func letterCombinationsE1(digits string) []string {
	if len(digits) == 0 {
		return []string{}
	}
	combinations = []string{}
	backtrack1(digits, 0, "")
	return combinations
}

func backtrack1(digits string, index int, combination string) {
	if index == len(digits) {
		combinations = append(combinations, combination)
	} else {
		digit := string(digits[index])
		letters := phoneMap[digit]
		lettersCount := len(letters)
		for i := 0; i < lettersCount; i++ {
			backtrack1(digits, index + 1, combination + string(letters[i]))
		}
	}
}
