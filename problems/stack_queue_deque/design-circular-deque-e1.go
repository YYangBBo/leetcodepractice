package stack_queue_deque

type MyCircularDequeE1 struct {
	queue []int
	head int
	tail int
}


/** Initialize your data structure here. Set the size of the deque to be k. */
func ConstructorE1(k int) MyCircularDequeE1 {
	return MyCircularDequeE1{
		queue: make([]int, k + 1),
		head: 0,
		tail: 0,
	}
}


/** Adds an item at the front of Deque. Return true if the operation is successful. */
func (this *MyCircularDequeE1) InsertFront(value int) bool {
	if this.IsFull() {
		return false
	}
	this.head = (this.head - 1 + len(this.queue)) % len(this.queue)
	this.queue[this.head] = value
	return true
}


/** Adds an item at the rear of Deque. Return true if the operation is successful. */
func (this *MyCircularDequeE1) InsertLast(value int) bool {
	if this.IsFull() {
		return false
	}
	this.queue[this.tail] = value
	this.tail = (this.tail + 1) % len(this.queue)
	return true
}


/** Deletes an item from the front of Deque. Return true if the operation is successful. */
func (this *MyCircularDequeE1) DeleteFront() bool {
	if this.IsEmpty() {
		return false
	}
	this.head = (this.head + 1) % len(this.queue)
	return true
}


/** Deletes an item from the rear of Deque. Return true if the operation is successful. */
func (this *MyCircularDequeE1) DeleteLast() bool {
	if this.IsEmpty() {
		return false
	}
	this.tail = (this.tail - 1 + len(this.queue)) % len(this.queue)
	return true
}


/** Get the front item from the deque. */
func (this *MyCircularDequeE1) GetFront() int {
	if this.IsEmpty() {
		return -1
	}
	return this.queue[this.head]
}


/** Get the last item from the deque. */
func (this *MyCircularDequeE1) GetRear() int {
	if this.IsEmpty() {
		return -1
	}
	n := (this.tail - 1 + len(this.queue)) % len(this.queue)
	return this.queue[n]
}


/** Checks whether the circular deque is empty or not. */
func (this *MyCircularDequeE1) IsEmpty() bool {
	return this.head == this.tail
}


/** Checks whether the circular deque is full or not. */
func (this *MyCircularDequeE1) IsFull() bool {
	return (this.tail + 1) % len(this.queue) == this.head
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