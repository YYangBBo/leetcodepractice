package Tencent

import "fmt"

// https://leetcode-cn.com/problems/add-strings/
func addStrings(num1 string, num2 string) string {
	num1Byte := []byte(num1)
	num2Byte := []byte(num2)

	ret := ""
	isAdd := false

	for i := 0; ; i++ {
		if i >= len(num1Byte) && i >= len(num2Byte) {
			break
		}

		n1 := 0
		if i < len(num1Byte) {
			n1 = int(num1Byte[len(num1Byte)-1-i] - '0')
		}

		n2 := 0
		if i < len(num2Byte) {
			n2 = int(num2Byte[len(num2Byte)-1-i] - '0')
		}

		sum := n1 + n2
		if isAdd {
			sum++
			isAdd = false
		}
		if sum >= 10 {
			isAdd = true
			sum -= 10
		}

		ret = fmt.Sprintf("%d",sum) + ret
	}

	if isAdd {
		ret = "1" + ret
	}

	return ret
}
