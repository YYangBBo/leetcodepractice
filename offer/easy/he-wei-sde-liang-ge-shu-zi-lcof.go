package easy

// 输入一个递增排序的数组和一个数字s，在数组中查找两个数，使得它们的和正好是s。如果有多对数字的和等于s，则输出任意一对即可。
// https://leetcode-cn.com/problems/he-wei-sde-liang-ge-shu-zi-lcof/
func twoSum(nums []int, target int) []int {
	imap := make(map[int]struct{})

	for _, num := range nums {
		if num > target {
			return []int{}
		}
		if _,exist := imap[target-num];exist{
			return []int{num,target-num}
		}
		imap[num] = struct{}{}
	}

	return []int{}
}
