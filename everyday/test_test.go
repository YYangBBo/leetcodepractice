package everyday

import (
	"fmt"
	"testing"
)

func TestSlice1(t *testing.T) {
	s1 := []int{1, 2, 3, 4, 5}
	s2 := s1[0:5]
	// s2 = append(s2, 6)
	s1[3] = 30
	fmt.Println(s1[3], s2[3])
}
