package array_list

// MoveZeroesM1 给定一个数组 nums，编写一个函数将所有 0 移动到数组的末尾，同时保持非零元素的相对顺序。
// 记录0的个数，将非0元素往前挪动countZero个位置
func MoveZeroesM1(nums []int) {
	lenNums := len(nums)
	countZero := 0
	for i, num := range nums {
		if num == 0 {
			countZero++
			continue
		}
		if i-countZero >= 0 {
			nums[i-countZero] = nums[i]
		}
	}

	// 最后几位置为0
	for i := 1; i <= countZero; i++ {
		if lenNums-i >= 0 {
			nums[lenNums-i] = 0
		}
	}
}

// MoveZeroesO1 优化方法1
// 记录最后0的位置，把非0元素与之交换
func MoveZeroesO1(nums []int) {
	lastZeroIndex := 0

	for i, num := range nums {
		if num != 0 {
			nums[lastZeroIndex] = nums[i]
			lastZeroIndex ++
		}
 	}

	for i := lastZeroIndex; i < len(nums); i++ {
		nums[i] = 0
	}
}

// MoveZeroesO2 优化方法2
//
func MoveZeroO2(nums []int)  {
	lastZeroIndex := 0
	for i, num := range nums {
		if num != 0 {
			nums[i],nums[lastZeroIndex] = nums[lastZeroIndex],nums[i]
			lastZeroIndex ++
		}
	}
}

func MoveZeroP2(nums []int)  {
	lastZeroIndex := 0

	for i, num := range nums {
		if num != 0 {
			nums[i],nums[lastZeroIndex] = nums[lastZeroIndex],nums[i]
			lastZeroIndex ++
		}
	}
}

