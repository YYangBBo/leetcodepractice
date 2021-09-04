package bitwise

import "math/bits"

// 颠倒给定的 32 位无符号整数的二进制位。
// https://leetcode-cn.com/problems/reverse-bits/
func reverseBits(num uint32) uint32 {
	return bits.Reverse32(num)
}