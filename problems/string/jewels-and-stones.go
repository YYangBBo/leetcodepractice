package string

// https://leetcode-cn.com/problems/jewels-and-stones/
func numJewelsInStones(jewels string, stones string) int {
	if len(jewels) == 0 {
		return 0
	}
	jMap := make(map[int32]bool)

	for _, i2 := range jewels {
		jMap[i2] = true		
	}
	
	count := 0
	for _, i2 := range stones {
		if _,isExist := jMap[i2];isExist {
			count++
		}
	}
	
	return count
}
