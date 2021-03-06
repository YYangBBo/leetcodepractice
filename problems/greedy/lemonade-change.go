package greedy

// 在柠檬水摊上，每一杯柠檬水的售价为5美元。
//顾客排队购买你的产品，（按账单 bills 支付的顺序）一次购买一杯。
//每位顾客只买一杯柠檬水，然后向你付 5 美元、10 美元或 20 美元。你必须给每个顾客正确找零，也就是说净交易是每位顾客向你支付 5 美元。
//注意，一开始你手头没有任何零钱。
//如果你能给每位顾客正确找零，返回true，否则返回 false。
// https://leetcode-cn.com/problems/lemonade-change/description/
func LemonadeChange(bills []int) bool {
	billMap := make(map[int]int)

	for _, bill := range bills {
		// 要找的钱
		chengeBill := bill - 5

		// 优先十块
		if chengeBill >= 10 && billMap[10] > 0 {
			chengeBill -= 10
			billMap[10]--
		}

		// 再找五块
		chengeBill /= 5
		billMap[5] -= chengeBill
		if billMap[5] < 0 {
			return false
		}

		// 统计进账
		billMap[bill]++
	}

	return true
}
