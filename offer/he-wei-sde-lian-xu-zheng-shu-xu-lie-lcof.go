package offer

// 输入一个正整数 target ，输出所有和为 target 的连续正整数序列（至少含有两个数）。
//序列内的数字由小到大排列，不同序列按照首个数字从小到大排列。
//链接：https://leetcode-cn.com/problems/he-wei-sde-lian-xu-zheng-shu-xu-lie-lcof
func findContinuousSequence(target int) [][]int {
	ret := make([][]int, 0)

	for i := 1; i <= (target/2)+1; i++ {
		sum := 0
		currRet := make([]int, 0)
		for j := i; j <= (target/2)+1; j++ {
			currRet = append(currRet, j)
			sum += j
			if sum > target {
				break
			}
			if sum == target {
				ret = append(ret, currRet)
				break
			}
		}
	}

	return ret
}
