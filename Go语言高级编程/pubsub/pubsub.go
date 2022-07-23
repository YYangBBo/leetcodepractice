package main

import (
	"sync"
	"time"
)

type (
	subscriber chan interface{}
	topicFunc  func(v interface{}) bool
)

// Publisher 发布者对象
type Publisher struct {
	m           sync.Mutex
	buffer      int
	timeout     time.Duration
	subscribers map[subscriber]topicFunc
}

func NewPublisher(timeout time.Duration, buffer int) *Publisher {
	return &Publisher{
		m:           sync.Mutex{},
		buffer:      buffer,
		timeout:     timeout,
		subscribers: make(map[subscriber]topicFunc),
	}
}

func (p *Publisher) Subscriber() chan interface{} {
	return p.SubscriberTopic(func(v interface{}) bool {
		return true
	})
}

func (p *Publisher) SubscriberTopic(topic topicFunc) chan interface{} {
	ch := make(chan interface{}, p.buffer)
	p.m.Lock()
	defer p.m.Unlock()
	p.subscribers[ch] = topic
	return ch
}

func (p *Publisher) Evict(sub chan interface{}) {
	p.m.Lock()
	defer p.m.Unlock()

	delete(p.subscribers, sub)
	close(sub)
}

func (p *Publisher) Publish(v interface{}) {
	p.m.Lock()
	defer p.m.Unlock()

	var wg sync.WaitGroup
	for s, t := range p.subscribers {
		wg.Add(1)
		go p.sendTopic(s, t, v, &wg)
	}

	wg.Wait()
}

func (p *Publisher) sendTopic(sub subscriber, topic topicFunc, v interface{}, wg *sync.WaitGroup) {
	defer wg.Done()
	if topic != nil && !topic(v) {
		return
	}

	select {
	case sub <- v:
	case <-time.After(p.timeout):
	}
}

func (p *Publisher) Close() {
	p.m.Lock()
	defer p.m.Unlock()

	for s := range p.subscribers {
		delete(p.subscribers, s)
		close(s)
	}
}
