package stack_queue_deque

type MinStack struct {
	buf    []int
	head   int
	tail   int
	count  int
	minCap int
	minVal int
}

/** initialize your data structure here. */
func Constructor() MinStack {
	return MinStack{
		buf:    make([]int, minCapacity, minCapacity),
		head:   0,
		tail:   0,
		count:  0,
		minVal: 0,
		minCap: minCapacity,
	}
}

func (this *MinStack) Push(val int) {
	this.grow()
	this.buf[this.tail] = val
	this.tail++
	this.count++
	this.resetMin()
}

func (this *MinStack) Pop() {
	if this.tail > 0 {
		this.tail--
		this.resetMin()
	}
}

func (this *MinStack) Top() int {
	if this.tail > 0 {
		this.tail--
		this.count--
		this.resetMin()
		return this.buf[this.tail]
	}

	return 0
}

func (this *MinStack) GetMin() int {
	return this.minVal
}

// grow 扩容算法
func (this *MinStack) grow() {
	if this.tail == this.minCap-1 {
		this.minCap = this.minCap * 2
		newBuf := make([]int, this.minCap, this.minCap)
		copy(newBuf[0:], this.buf)
		this.buf = newBuf
	}
}

// resetMin 重新查找Min
func (this *MinStack) resetMin() {
	if this.tail > 0 {
		this.minVal = 1<<32 - 1
		for i := 0; i < this.tail; i++ {
			if this.buf[i] < this.minVal {
				this.minVal = this.buf[i]
			}
		}
	}
}

/**
 * Your MinStack object will be instantiated and called as such:
 * obj := Constructor();
 * obj.Push(val);
 * obj.Pop();
 * param_3 := obj.Top();
 * param_4 := obj.GetMin();
 */
