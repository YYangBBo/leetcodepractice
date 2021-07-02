package _map

import "sort"

// 给定一个字符串数组，将字母异位词组合在一起。字母异位词指字母相同，但排列不同的字符串。
// https://leetcode-cn.com/problems/group-anagrams/
func groupAnagrams(strs []string) [][]string {
	newStrs := make([]string,len(strs))
	// 对所有的单词进行排序
	for i, str := range strs {
		strByte := []byte(str)
		sort.Slice(strByte, func(i, j int) bool {
			return strByte[i] < strByte[j]
		})
		newStrs[i] = string(strByte)
	}

	retMap := make(map[string][]int)
	for i, str := range newStrs {
		if _,exist := retMap[str];!exist{
			retMap[str] = make([]int,0)
		}
		retMap[str] = append(retMap[str], i)
	}

	retStr := make([][]string,0)
	for _, ints := range retMap {
		xxx := make([]string,0,len(ints))
		for _, value := range ints {
			xxx = append(xxx, strs[value])
		}
		retStr = append(retStr, xxx)
	}

	return retStr
}