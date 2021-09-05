package lrucache_m

type LRULinkedListNode struct {
	key, value int
	prev, next *LRULinkedListNode
}

type LRUCache struct {
	cache      map[int]*LRULinkedListNode
	cap        int
	size       int
	head, tail *LRULinkedListNode
}

func Constructor(capacity int) LRUCache {
	l := LRUCache{
		cache: map[int]*LRULinkedListNode{},
		cap:   capacity,
		size:  0,
		head: &LRULinkedListNode{
			key:   0,
			value: 0,
		},
		tail: &LRULinkedListNode{
			key:   0,
			value: 0,
		},
	}

	l.head.next = l.tail
	l.tail.prev = l.head

	return l
}

func (this *LRUCache) Get(key int) int {
	// 判断是否存在此key
	if _, isExist := this.cache[key]; !isExist {
		return -1
	}

	// 返回后需要将此节点变为头结点
	node := this.cache[key]
	this.movetoHead(node)

	return node.value
}

func (this *LRUCache) Put(key int, value int) {
	// 先判断元素是否存在
	if _, isExist := this.cache[key]; !isExist {
		node := &LRULinkedListNode{
			key:   key,
			value: value,
		}
		this.cache[key] = node
		this.addToHead(node)
		this.size++

		if this.size > this.cap {
			removed := this.removeTail()
			delete(this.cache, removed.key)
			this.size--
		}

	} else {
		node := this.cache[key]
		node.value = value
		this.movetoHead(node)
	}
}

func (this *LRUCache) movetoHead(node *LRULinkedListNode) {
	this.removeNode(node)
	this.addToHead(node)
}

func (this *LRUCache) addToHead(node *LRULinkedListNode) {
	node.next = this.head.next
	node.prev = this.head

	this.head.next.prev = node
	this.head.next = node
}

func (this *LRUCache) removeNode(node *LRULinkedListNode) {
	node.prev.next = node.next
	node.next.prev = node.prev
}

func (this *LRUCache) removeTail() *LRULinkedListNode {
	tailNode := this.tail.prev
	this.removeNode(tailNode)
	return tailNode
}
