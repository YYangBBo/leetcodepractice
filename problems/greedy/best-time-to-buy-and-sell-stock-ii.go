package greedy

//给定一个数组 prices ，其中 prices[i] 是一支给定股票第 i 天的价格。
//设计一个算法来计算你所能获取的最大利润。你可以尽可能地完成更多的交易（多次买卖一支股票）。
//注意：你不能同时参与多笔交易（你必须在再次购买前出售掉之前的股票）。
// https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock-ii/description/
func maxProfit(prices []int) int {
	profit := 0

	isBuy := false
	buyIndex := -1
	for i := 0; i < len(prices)-1; i++ {
		// 买入
		if prices[i] < prices[i+1] && !isBuy {
			isBuy = true
			buyIndex = i
		}

		// 卖出
		if prices[i] > prices[i+1] && isBuy {
			isBuy = false
			profit += prices[i] - prices[buyIndex]
		}

		// 如果到最后还没卖
		if i == len(prices)-2 && isBuy {
			isBuy = false
			profit += prices[i+1] - prices[buyIndex]
		}
	}

	return profit
}
