// Leetcode: 2429. Minimize XOR
// https://leetcode.com/problems/minimize-xor/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms Beats 100.00%
// Memory: 4.05 MB Beats 37.50%
// 2025.01.15 Daily Challange.

package main

import (
//"fmt"
)

//var p = fmt.Println

func minimizeXor(num1 int, num2 int) int {
	xArr := [32]int{}
	num1Arr := [32]int{}
	amount2 := AmountSetBits(num2)
	amount1 := bin2Arr(num1, &num1Arr)
	if amount2 == amount1 {
		return num1
	}
	//p(num1Arr, "num 1 arr to XOR")
	// Fill ones for most significant bits.
	for i := 31; i >= 0 && amount2 > 0; i -= 1 {
		if 1 == num1Arr[i] {
			xArr[i] = 1
			amount2 -= 1
		}
	}
	// Fill least significant zeros by ones.
	for i := 0; i < 32 && amount2 > 0; i += 1 {
		if 0 == num1Arr[i] {
			xArr[i] = 1
			amount2 -= 1
		}
	}
	//p(xArr, "answer arr")
	return arr2Int(&xArr)
}

func AmountSetBits(n int) int {
	ans := 0
	for 0 != n {
		if 1 == n%2 {
			ans += 1
		}
		n = n / 2
	}
	return ans
}

func bin2Arr(n int, arr *[32]int) int {
	count := 0
	for i := 0; i < 32; i += 1 {
		if 1 == n%2 {
			//p(n)
			arr[i] = 1 // <= Here was an error! I used tmp.
			// tmp := *arr <= makes a copy of an array.
			count += 1
		}
		n /= 2
	}
	return count
}

func arr2Int(arr *[32]int) int {
	tmp := *arr
	ans := 0
	pow := 1
	for i := 0; i < 32; i += 1 {
		if tmp[i] == 1 {
			ans += pow
		}
		pow *= 2
	}
	return ans
}
