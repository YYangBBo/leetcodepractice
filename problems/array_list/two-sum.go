package array_list

// 给定一个整数数组 nums和一个整数目标值 target，请你在该数组中找出 和为目标值 target 的那两个整数，并返回它们的数组下标。
//你可以假设每种输入只会对应一个答案。但是，数组中同一个元素在答案里不能重复出现。
//你可以按任意顺序返回答案。
// https://leetcode-cn.com/problems/two-sum/
func twoSumE1(nums []int, target int) []int {
		hashTable := map[int]int{}
		for i, x := range nums {
		if p, ok := hashTable[target-x]; ok {
		return []int{p, i}
	}
		hashTable[x] = i
	}
		return nil

}
