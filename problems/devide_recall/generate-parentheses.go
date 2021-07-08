package devide_recall

func generateParenthesis(n int) []string {
	retStr := make([]string,0)

	var genPatSub func(left,right int,s string)
	genPatSub = func(left,right int,s string) {
		if left == n && right == n {
			retStr = append(retStr, s)
			return
		}

		if left < n {
			genPatSub(left+1,right,s+"(")
		}

		if left > right{
			genPatSub(left,right+1,s+")")
		}
	}

	genPatSub(0,0,"")

	return retStr
}
