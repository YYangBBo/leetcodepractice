package main

import (
	"fmt"
	"sync"
	"time"
)

// map
// func:
// 写入
// 读取
// 多线程情况下线程安全
// 读取过程当中key不存在，则当前操作会阻塞，直到value存在则返回
func main() {
	myMap := NewMap()

	go func() {
		time.Sleep(2 * time.Second)
		myMap.Put("111", "222")
	}()

	fmt.Println(myMap.Get("111"))
}

type MyMap struct {
	buf         sync.Map
	dataChanMap map[string]chan string
}

func NewMap() *MyMap {
	return &MyMap{dataChanMap: make(map[string]chan string)}
}

func (m *MyMap) Get(key string) string {
	v, ok := m.buf.Load(key)
	if !ok {
		m.dataChanMap[key] = make(chan string)
		return <-m.dataChanMap[key]
	} else {
		return v.(string)
	}
}

func (m *MyMap) Put(key, value string) {
	m.buf.Store(key, value)
	if dataChan, isExist := m.dataChanMap[key]; isExist {
		dataChan <- value
		delete(m.dataChanMap, key)
	}
}
