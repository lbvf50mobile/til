// Leetcode: 13. Roman to Integer
// Accepted. Thanks God!
package main

func romanToInt(s string) int {
	// Idea is to iterate over the intut string.
	// if there possbile to be pairs make double jump.
	ans := 0
	i := 0
	double := map[string]int{
		"IV": 4, "IX": 9, "XL": 40, "XC": 90, "CD": 400, "CM": 900,
	}
	one := map[string]int{
		"I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000,
	}

	for i < len(s) {
		if i+1 < len(s) {
			tmp := s[i : i+2]
			if v, ok := double[tmp]; ok {
				ans += v
				i += 2
				continue
			}

		}
		tmp := s[i : i+1]
		if v, ok := one[tmp]; ok {
			ans += v
			i += 1
			continue
		}

	}
	return ans
}
