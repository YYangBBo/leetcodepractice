package sort

import "sort"

// 给你两个数组，arr1 和,arr2，
//arr2,中的元素各不相同
//arr2 中的每个元素都出现在,arr1,中
//对 arr1,中的元素进行排序，使 arr1 中项的相对顺序和,arr2,中的相对顺序相同。未在,arr2,中出现过的元素需要按照升序放在,arr1,的末尾。
//
//链接：https://leetcode-cn.com/problems/relative-sort-array
func relativeSortArray(arr1 []int, arr2 []int) []int {
	a1Map := make(map[int]int)

	for _, i2 := range arr1 {
		a1Map[i2] += 1
	}

	ret := make([]int,0,len(arr1)+len(arr2))
	other := make([]int,0)

	for _, i2 := range arr2 {
		if _,isExist := a1Map[i2];isExist{
			for i := 0; i < a1Map[i2]; i++ {
				ret = append(ret, i2)
			}
			delete(a1Map,i2)
		}
	}

	for i, i2 := range a1Map {
		for j := 0; j < i2; j++ {
			other = append(other, i)
		}
	}
	sort.Ints(other)
	ret = append(ret, other...)
	return ret
}
