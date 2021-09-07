package advanced_dp

// https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock/
func maxProfit(prices []int) int {
	minPrice := 100000
	maxPrice := 0

	for _, price := range prices {
		if price < minPrice {
			minPrice = price
		}else if price - minPrice > maxPrice {
			maxPrice = price - minPrice
		}
	}

	return maxPrice
}
