package array_list

// 给定一个由 整数 组成的 非空 数组所表示的非负整数，在该数的基础上加一。
//最高位数字存放在数组的首位， 数组中每个元素只存储单个数字。
//你可以假设除了整数 0 之外，这个整数不会以零开头。
// https://leetcode-cn.com/problems/plus-one/
func plusOne(digits []int) []int {
	if digits[len(digits)-1] < 9 {
		digits[len(digits)-1] = digits[len(digits)-1] + 1
	} else {
		no9Index := -1
		// 需要找到最前以为非9数字
		for i := len(digits) - 1; i >= 0; i-- {
			if digits[i] < 9 {
				no9Index = i
				break
			}
		}

		if no9Index == -1 {
			return append([]int{1}, digits...)
		} else {
			digits[no9Index] = digits[no9Index] + 1

			for i := no9Index + 1; i < len(digits); i++ {
				digits[i] = 0
			}
		}
	}
	return digits
}

func plusOneE1(digits []int) []int {
	for i := len(digits) - 1; i >= 0; i-- {
		digits[i] += 1
		digits[i] %= 10
		if digits[i] != 0 {
			return digits
		}
	}
	return append([]int{1}, digits...)
}
