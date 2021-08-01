package greedy

//机器人在一个无限大小的 XY 网格平面上行走，从点(0, 0) 处开始出发，面向北方。该机器人可以接收以下三种类型的命令 commands ：
//-2 ：向左转90 度
//-1 ：向右转 90 度
//1 <= x <= 9 ：向前移动x个单位长度
//在网格上有一些格子被视为障碍物obstacles 。第 i个障碍物位于网格点 obstacles[i] = (xi, yi) 。
//机器人无法走到障碍物上，它将会停留在障碍物的前一个网格方块上，但仍然可以继续尝试进行该路线的其余部分。
//返回从原点到机器人所有经过的路径点（坐标为整数）的最大欧式距离的平方。（即，如果距离为 5 ，则返回 25 ）
// https://leetcode-cn.com/problems/walking-robot-simulation
func robotSimM1(commands []int, obstacles [][]int) int {
	x, y, d := 0, 0, 0
	ans := 0
	for _, command := range commands {
		if command > 0 {
			for i := 0; i < command; i++ {
				// 判断是否被阻挡
				if isObstacles(x, y, d, obstacles) {
					break
				}
				// 前进
				switch d {
				case 0:
					y += 1
				case 1:
					x += 1
				case 2:
					y -= 1
				case 3:
					x -= 1
				}
			}
		} else {
			// 转向
			switch command {
			case -1:
				if d == 3 {
					d = 0
				} else {
					d++
				}
			case -2:
				if d == 0 {
					d = 3
				} else {
					d--
				}
			}
		}

		if ans < x*x+y*y {
			ans = x*x + y*y
		}
	}

	return ans
}

func isObstacles(x, y, d int, obstacles [][]int) bool {
	for _, obstacle := range obstacles {
		switch d {
		case 0:
			if x == obstacle[0] && y+1 == obstacle[1] {
				return true
			}
		case 1:
			if x+1 == obstacle[0] && y == obstacle[1] {
				return true
			}
		case 2:
			if x == obstacle[0] && y-1 == obstacle[1] {
				return true
			}
		case 3:
			if x-1 == obstacle[0] && y == obstacle[1] {
				return true
			}
		}
	}

	return false
}

func robotSimE1(commands []int, obstacles [][]int) int {
	//把所有障碍物都存储起来 便于访问的时候复杂度是O1
	m := make(map[[2]int]bool)
	for _, v := range obstacles {
		m[[2]int{v[0], v[1]}] = true
	}
	x, y, direct := 0, 0, 0
	//定义方向 0 北 1 东 2 南  3 西
	directX := []int{0, 1, 0, -1}
	directY := []int{1, 0, -1, 0}

	result := 0 //记录最大值
	//遍历指令
	for _, v := range commands {
		if v == -2 {
			//左转90 等于右转3个90
			direct = (direct + 3) % 4
			continue
		}

		if v == -1 {
			direct = (direct + 1) % 4
			continue
		}

		for i := 1; i <= v; i++ {
			temX := x + directX[direct]
			temY := y + directY[direct]
			if _, ok := m[[2]int{temX, temY}]; ok {
				break
			}
			if (temX*temX + temY*temY) > result {
				result = temX*temX + temY*temY
			}
			x = temX
			y = temY
		}
	}
	return result
}
