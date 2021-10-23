package everyday

import "math"

// https://leetcode-cn.com/problems/construct-the-rectangle/
func constructRectangle(area int) []int {
	w := int(math.Sqrt(float64(area)))
	for area%w > 0 {
		w--
	}
	return []int{area / w, w}
}
