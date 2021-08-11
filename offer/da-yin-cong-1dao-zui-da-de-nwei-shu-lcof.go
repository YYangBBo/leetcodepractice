package offer

import "math"

// 输入数字 n，按顺序打印出从 1 到最大的 n 位十进制数。比如输入 3，则打印出 1、2、3 一直到最大的 3 位数 999。
// https://leetcode-cn.com/problems/da-yin-cong-1dao-zui-da-de-nwei-shu-lcof/
func printNumbers(n int) []int {
	max := math.Pow10(n)-1
	intMax := int(max)
	ret := make([]int,0,intMax)
	for i := 1; i <= intMax; i++ {
		ret = append(ret, i)
	}

	return ret
}
