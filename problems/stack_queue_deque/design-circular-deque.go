package stack_queue_deque

type MyCircularDeque struct {
	buf []int
	head int
	tail int
	length int
	capacity int
}


// https://leetcode-cn.com/problems/design-circular-deque/
/** Initialize your data structure here. Set the size of the deque to be k. */
func Constructor(k int) MyCircularDeque {
	return MyCircularDeque{
		buf:      make([]int,k,k),
		tail:     -1,
		length:   0,
		capacity: 0,
	}
}


/** Adds an item at the front of Deque. Return true if the operation is successful. */
func (this *MyCircularDeque) InsertFront(value int) bool {
	if this.IsFull() {
		return false
	}

	newBuf := make([]int, this.capacity, this.capacity)
	copy(newBuf[1:],this.buf[0:this.tail])
	this.buf = newBuf
	this.buf[0] = value
	this.tail++
	this.length++
	return true
}


/** Adds an item at the rear of Deque. Return true if the operation is successful. */
func (this *MyCircularDeque) InsertLast(value int) bool {
	if this.IsFull() {
		return false
	}

	this.tail++
	this.buf[this.tail] = value
	this.length++
	return true
}


/** Deletes an item from the front of Deque. Return true if the operation is successful. */
func (this *MyCircularDeque) DeleteFront() bool {
	newBuf := make([]int, this.capacity, this.capacity)
	copy(newBuf[0:],this.buf[1:this.tail])
	this.buf = newBuf
	this.tail--
	this.length--
	return true
}


/** Deletes an item from the rear of Deque. Return true if the operation is successful. */
func (this *MyCircularDeque) DeleteLast() bool {
	this.tail--
	this.length--
	return true
}


/** Get the front item from the deque. */
func (this *MyCircularDeque) GetFront() int {
	if this.tail == -1 {
		return -1
	}

	return this.buf[0]
}


/** Get the last item from the deque. */
func (this *MyCircularDeque) GetRear() int {
	if this.tail == -1 {
		return -1
	}

	return this.buf[this.tail]
}


/** Checks whether the circular deque is empty or not. */
func (this *MyCircularDeque) IsEmpty() bool {
	return this.length == 0
}


/** Checks whether the circular deque is full or not. */
func (this *MyCircularDeque) IsFull() bool {
	return this.length == this.capacity
}


/**
 * Your MyCircularDeque object will be instantiated and called as such:
 * obj := Constructor(k);
 * param_1 := obj.InsertFront(value);
 * param_2 := obj.InsertLast(value);
 * param_3 := obj.DeleteFront();
 * param_4 := obj.DeleteLast();
 * param_5 := obj.GetFront();
 * param_6 := obj.GetRear();
 * param_7 := obj.IsEmpty();
 * param_8 := obj.IsFull();
 */