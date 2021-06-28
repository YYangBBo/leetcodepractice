package stack_queue_deque


// 给定 n 个非负整数，用来表示柱状图中各个柱子的高度。每个柱子彼此相邻，且宽度为 1 。
//求在该柱状图中，能够勾勒出来的矩形的最大面积。
// https://leetcode-cn.com/problems/largest-rectangle-in-histogram/
func largestRectangleAreaM1(heights []int) int {
	maxArea := 0
	for i, height := range heights {
		// 寻找当前元素的左右边界
		left,right := i,i

		for l := i; l >= 0 ; l-- {
			if heights[l] < height{
				break
			}
			left = l
		}

		for r := i; r < len(heights) ; r++ {
			if heights[r] < height{
				break
			}
			right = r
		}

		currArea := (right - left + 1) * height
		if currArea > maxArea {
			maxArea = currArea
		}
	}

	return maxArea
}

// 凡人无法理解，直接放弃
func largestRectangleAreaE1(heights []int) int {
	n := len(heights)
	left, right := make([]int, n), make([]int, n)
	for i := 0; i < n; i++ {
		right[i] = n
	}
	mono_stack := []int{}
	for i := 0; i < n; i++ {
		for len(mono_stack) > 0 && heights[mono_stack[len(mono_stack)-1]] >= heights[i] {
			right[mono_stack[len(mono_stack)-1]] = i
			mono_stack = mono_stack[:len(mono_stack)-1]
		}
		if len(mono_stack) == 0 {
			left[i] = -1
		} else {
			left[i] = mono_stack[len(mono_stack)-1]
		}
		mono_stack = append(mono_stack, i)
	}
	ans := 0
	for i := 0; i < n; i++ {
		ans = max(ans, (right[i] - left[i] - 1) * heights[i])
	}
	return ans
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}