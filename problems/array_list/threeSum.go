package array_list

import (
	"sort"
)

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
					ret = append(ret, []int{nums[i], nums[j], nums[k]})
				}
			}
		}
	}

	return ret
}

// threeSumE1 双指针方法
// 先排序,再用ij不断靠近
func ThreeSumE1(nums []int) [][]int {
	// 对nums 进行排序
	sort.Ints(nums)
	var ret [][]int

	for k := 0; k < len(nums)-2; k++ {
		if nums[k] > 0 {
			break
		}

		if k > 0 && nums[k] == nums[k-1] {
			continue
		}


		i, j := k+1, len(nums)-1
		for i < j {
			sum := nums[i] + nums[j] + nums[k]

			if sum < 0 {
				for i < j && nums[i] == nums[i+1] {
					i++
				}
				i++
			} else if sum > 0 {
				for i < j && nums[j] == nums[j-1] {
					j--
				}
				j--
			} else {
				ret = append(ret, []int{nums[i], nums[j], nums[k]})
				for i < j && nums[i] == nums[i+1] {
					i++
				}
				i++
				for i < j && nums[j] == nums[j-1] {
					j--
				}
				j--
			}
		}
	}

	return ret
}
