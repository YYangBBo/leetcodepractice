package problems

// MaxAreaM1 给你 n 个非负整数 a1，a2，...，an，每个数代表坐标中的一个点 (i, ai) 。在坐标内画 n 条垂直线，垂直线 i 的两个端点分别为 (i, ai) 和 (i, 0) 。找出其中的两条线，使得它们与 x 轴共同构成的容器可以容纳最多的水。
//
// 只能想到一个n^2的方法，枚举
func MaxAreaM1(heights []int) int {
	max := 0

	for i, height := range heights {
		for j := 1; j < len(heights)-i; j++ {
			if getMin(height, heights[i+j])*j > max {
				max = getMin(height, heights[i+j]) * j
			}
		}
	}

	return max
}

// getMin 获取两个数中较小的一个数
func getMin(num1, num2 int) int {
	if num1 > num2 {
		return num2
	} else {
		return num1
	}
}

// MaxAreaE1
// 从两边向内收敛(左右夹逼)
func MaxAreaE1(heights []int) int {
	max := 0
	for i, j := 0, len(heights)-1; i < j; {
		minheight := 0

		if heights[i] < heights[j] {
			minheight = heights[i]
			i++
		} else {
			minheight = heights[j]
			j--
		}
		area := (j - i + 1) * minheight
		max = getMaxInt(max, area)
	}

	return max
}

// MaxAreaP1 重复练习1
func MaxAreaP1(heights []int) int {
	max := 0
	i, j := 0, len(heights)-1

	for i < j {
		if heights[i] > heights[j] {
			max = getMaxInt(max, (j-i)*heights[j])
			j--
		} else {
			max = getMaxInt(max, (j-i)*heights[i])
			i++
		}
	}

	return max
}

func getMaxInt(x, y int) int {
	if x > y {
		return x
	}
	return y
}
