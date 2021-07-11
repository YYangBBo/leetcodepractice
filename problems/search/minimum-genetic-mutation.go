package search

import "sort"

// 一条基因序列由一个带有8个字符的字符串表示，其中每个字符都属于 "A", "C", "G", "T"中的任意一个。
//假设我们要调查一个基因序列的变化。一次基因变化意味着这个基因序列中的一个字符发生了变化。
//例如，基因序列由"AACCGGTT"变化至"AACCGGTA"即发生了一次基因变化。
//与此同时，每一次基因变化的结果，都需要是一个合法的基因串，即该结果属于一个基因库。
//现在给定3个参数 — start, end, bank，分别代表起始基因序列，目标基因序列及基因库，请找出能够使起始基因序列变化为目标基因序列所需的最少变化次数。如果无法实现目标变化，请返回 -1。
// 
//注意：
//起始基因序列默认是合法的，但是它并不一定会出现在基因库中。
//如果一个起始基因序列需要多次变化，那么它每一次变化之后的基因序列都必须是合法的。
//假定起始基因序列与目标基因序列是不一样的。
// https://leetcode-cn.com/problems/minimum-genetic-mutation/
// 没看懂题目
func minMutation(start string, end string, bank []string) int {
	result := make([]int, 0)
	dfs(start, end, bank, make([]bool, len(bank), len(bank)), 0, &result)
	sort.Ints(result)    // 从小到达排序，取出最小的值就是最优解。
	if len(result) == 0 {// 如果result的长度等于0，证明dfs中并没有对result进行拼接，就是start无法通过bank变成end
		return -1
	}
	return result[0]

}

// dfs
func dfs(temp string, end string, bank []string, bankVisted []bool, level int, result *[]int) {
	// 结束条件
	if temp == end {
		*result = append(*result, level)
		return
	}
	// 本层处理
	for i := 0; i < len(bank); i++ {
		if !bankVisted[i] && checkDifference(temp, bank[i]) { // 未visited&&相差一个字母
			bankVisted[i] = true // 标记为已读
			dfs(bank[i], end, bank, bankVisted, level+1, result) // 继续递归
			bankVisted[i] = false // 回溯，标记位未读
		}
	}
}
// 比较是否相差一个字母
func checkDifference(temp string, bankByOne string) bool {
	diff :=0
	for i := 0; i < len(temp); i++ {
		if temp[i] !=bankByOne[i] {
			diff++
		}
	}
	if diff == 1 {
		return true
	}
	return false
}
