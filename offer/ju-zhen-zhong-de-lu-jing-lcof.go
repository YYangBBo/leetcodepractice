package offer

// 给定一个m x n 二维字符网格board 和一个字符串单词word 。如果word 存在于网格中，返回 true ；否则，返回 false 。
//单词必须按照字母顺序，通过相邻的单元格内的字母构成，其中“相邻”单元格是那些水平相邻或垂直相邻的单元格。同一个单元格内的字母不允许被重复使用。
//链接：https://leetcode-cn.com/problems/ju-zhen-zhong-de-lu-jing-lcof
func exist(board [][]byte, word string) bool {
	x,y := 0,0
	findStart := false

	start : for i, bytes := range board {
		for i2, b := range bytes {
			if b == word[0] {
				x,y = i,i2
				findStart = true
				break start
			}
		}
	}

	if !findStart {
		return false
	}

	preStep := -1
	for i, i2 := range word[1:] {

	}

	return false
}
