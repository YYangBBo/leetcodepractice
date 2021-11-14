package everyday

type MapSum struct {
	item map[string]int
}

func Constructor() MapSum {
	return MapSum{map[string]int{}}
}

func (this *MapSum) Insert(key string, val int) {
	this.item[key] = val
}

func (this *MapSum) Sum(prefix string) int {
	sum := 0
	for k, v := range this.item {
		if len(k) < len(prefix) {
			continue
		}
		if k[:len(prefix)] == prefix {
			sum += v
		}
	}
	return sum
}

/**
 * Your MapSum object will be instantiated and called as such:
 * obj := Constructor();
 * obj.Insert(key,val);
 * param_2 := obj.Sum(prefix);
 */
