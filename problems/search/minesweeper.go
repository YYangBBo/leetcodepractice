package search

//让我们一起来玩扫雷游戏！
//给定一个代表游戏板的二维字符矩阵。'M'代表一个未挖出的地雷，'E'代表一个未挖出的空方块，'B'代表没有相邻（上，下，左，右，和所有4个对角线）地雷的已挖出的空白方块，数字（'1' 到 '8'）表示有多少地雷与这块已挖出的方块相邻，'X'则表示一个已挖出的地雷。
//现在给出在所有未挖出的方块中（'M'或者'E'）的下一个点击位置（行和列索引），根据以下规则，返回相应位置被点击后对应的面板：
//如果一个地雷（'M'）被挖出，游戏就结束了- 把它改为'X'。
//如果一个没有相邻地雷的空方块（'E'）被挖出，修改它为（'B'），并且所有和其相邻的未挖出方块都应该被递归地揭露。
//如果一个至少与一个地雷相邻的空方块（'E'）被挖出，修改它为数字（'1'到'8'），表示相邻地雷的数量。
//如果在此次点击中，若无更多方块可被揭露，则返回面板。
var dirX = []int{0, 1, 0, -1, 1, 1, -1, -1}
var dirY = []int{1, 0, -1, 0, 1, -1, 1, -1}

func updateBoard(board [][]byte, click []int) [][]byte {
	x, y := click[0], click[1]
	if board[x][y] == 'M' {
		board[x][y] = 'X'
	} else {
		dfsBoard(board, x, y)
	}
	return board
}

func dfsBoard(board [][]byte, x, y int) {
	cnt := 0
	for i := 0; i < 8; i++ {
		tx, ty := x+dirX[i], y+dirY[i]
		if tx < 0 || tx >= len(board) || ty < 0 || ty >= len(board[0]) {
			continue
		}
		// 不用判断 M，因为如果有 M 的话游戏已经结束了
		if board[tx][ty] == 'M' {
			cnt++
		}
	}
	if cnt > 0 {
		board[x][y] = byte(cnt + '0')
	} else {
		board[x][y] = 'B'
		for i := 0; i < 8; i++ {
			tx, ty := x+dirX[i], y+dirY[i]
			// 这里不需要在存在 B 的时候继续扩展，因为 B 之前被点击的时候已经被扩展过了
			if tx < 0 || tx >= len(board) || ty < 0 || ty >= len(board[0]) || board[tx][ty] != 'E' {
				continue
			}
			dfsBoard(board, tx, ty)
		}
	}
}
