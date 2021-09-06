package sort

func mergeSort(nums []int) []int {
	numsLen := len(nums)

	if numsLen == 1 {
		return nums
	}

	mid := numsLen >> 1

	left := nums[:mid]
	right := nums[mid:]

	return merge(mergeSort(left), mergeSort(right))
}

func merge(items1 []int, items2 []int) []int {
	ret := make([]int, len(items1)+len(items2))

	l1,l2:=0,0
	for  l1 < len(items1) && l2 < len(items2) {
		if items1[l1]<items2[l2] {
			ret[l1+l2] = items1[l1]
			l1++
		}else {
			ret[l1+l2] = items2[l2]
			l2++
		}
	}

	for l1 < len(items1) {
		ret[l1+l2] = items1[l1]
		l1++
	}

	for l2 < len(items2) {
		ret[l1+l2] = items2[l2]
		l2++
	}

	return ret
}
