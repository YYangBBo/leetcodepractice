package bitwise

// 编写一个函数，输入是一个无符号整数（以二进制串的形式），返回其二进制表达式中数字位数为 '1' 的个数（也被称为汉明重量）。
//
//链接：https://leetcode-cn.com/problems/number-of-1-bits
func hammingWeight(num uint32) (count int) {
	for ;num>0;num&=(num-1){
		count++
	}

	return
}
