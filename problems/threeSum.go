package problems

import "sort"

// 给你一个包含 n 个整数的数组nums，判断ums是否存在三个元素 a，b，c ，使得a + b + c = 0 ？请你找出所有和为 0 且不重复的三元组。
// 转化为a+b = -c的形式
// 未去重
func threeSumM1(nums []int) [][]int {
	var ret [][]int
	lenNums := len(nums)
	for i := 0; i < lenNums; i++ {
		for j := i + 1; j < lenNums; j++ {
			for k := 0; k < lenNums; k++ {
				if k == i || k == j {
					continue
				}

				if nums[i]+nums[j] == -nums[k] {
					ret = append(ret, []int{nums[i],nums[j], nums[k]})
				}
			}
		}
	}

	return ret
}

// threeSumE1 双指针方法
// 先排序,再用ij不断
func threeSumE1(nums []int) [][]int {
	// 对nums 进行排序
	sort.Ints(nums)

	k,i,j := 0,1,len(nums)-1
	for ; k < len(nums); k++ {

	}
}