package main

type Limiter struct {
	MaxProcess int64
	limitChan  chan interface{}
	EventFunc  func() error
}

func NewLimiter(maxProcess int64, eventFunc func() error) *Limiter {
	return &Limiter{
		MaxProcess: maxProcess,
		limitChan:  make(chan interface{}, maxProcess),
		EventFunc:  eventFunc,
	}
}

func (l *Limiter) Enter() {
	l.limitChan <- true
}

func (l *Limiter) Leave() {
	<-l.limitChan
}
