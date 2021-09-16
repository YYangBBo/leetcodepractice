package code

// https://leetcode-cn.com/problems/two-sum/
func twoSum(nums []int, target int) []int {
	numMap := make(map[int]int)

	for i, num := range nums {
		if mapNum, isExist := numMap[target-num]; isExist {
			return []int{mapNum, i}
		} else {
			numMap[num] = i
		}
	}

	return nil
}
