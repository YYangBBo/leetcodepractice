package stack_queue_deque

func isValid(s string) bool {
	sBytes := []byte(s)

	pairs := map[byte]byte{
		')': '(',
		']': '[',
		'}': '{',
	}
	deque := New(len(sBytes))

	for _, sByte := range sBytes {
		if pairsValue,exist := pairs[sByte];exist && deque.Len()>0 {
			if pairsValue != deque.PopBack().(byte){
				return false
			}
		}else {
			deque.PushBack(sByte)
		}
	}

	return true && deque.Len()==0
}


