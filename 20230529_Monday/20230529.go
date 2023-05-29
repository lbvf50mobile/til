// Leetcode: 1603. Design Parking System.
// https://leetcode.com/problems/design-parking-system/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 46 ms, faster than 33.33% of Go online submissions for Design
// Parking System.
// Memory Usage: 7.9 MB, less than 37.18% of Go online submissions for Design
// Parking System.
// 2023.05.29 Daily Challenge.
package main

type ParkingSystem struct {
	x [3]int
}

func Constructor(big int, medium int, small int) ParkingSystem {
	ans := ParkingSystem{}
	ans.x[0] = big
	ans.x[1] = medium
	ans.x[2] = small
	return ans

}

func (this *ParkingSystem) AddCar(carType int) bool {
	t := carType - 1
	if this.x[t] <= 0 {
		return false
	} else {
		this.x[t] -= 1
		return true
	}

}

/**
 * Your ParkingSystem object will be instantiated and called as such:
 * obj := Constructor(big, medium, small);
 * param_1 := obj.AddCar(carType);
 */
