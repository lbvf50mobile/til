// Go: Exercise Slice (go-tour).

// https://tour.golang.org/moretypes/18

package main

import "golang.org/x/tour/pic"

func Pic(dx, dy int) [][]uint8 {
 answer := make([][]uint8,dy,dy)
 
 for i:=0; i < dy ; i+=1 {
 	answer[i] = make([]uint8,dx,dx)
 	for j:=0; j < dx; j+=1{
		answer[i][j] = uint8((i+j)/2)
	}
 }
 
 return answer
}

func main() {
	pic.Show(Pic)
}
