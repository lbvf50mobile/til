// Leetcode: 2429. Minimize XOR
// https://leetcode.com/problems/minimize-xor/

package main

import (
// "fmt"
)

func minimizeXor(num1 int, num2 int) int {
	xArr := [32]int{}
	num1Arr := [32]int{}
	amount2 := AmountSetBits(num2)
	amount1 := bin2Arr(num1, &num1Arr)
	if amount2 == amount1 {
		return num1
	}
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
	tmp := *arr
	count := 0
	for i := 0; i < 32; i += 1 {
		if 1 == n%2 {
			tmp[i] = 1
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
