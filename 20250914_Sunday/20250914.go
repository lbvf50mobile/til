// Leetcode: 966. Vowel Spellchecker
// https://leetcode.com/problems/vowel-spellchecker/description/?envType=daily-question&envId=2025-09-14
// - - -
// Accepted.
// Thanks God, Jesus Christ!

package main

import (
	"strings"
)

func spellchecker(wordlist []string, queries []string) []string {
	// Create three maps.

	pure := createPure(wordlist)
	nocase := createNoCase(wordlist)
	novow := createNoVowel(wordlist)

	ans := make([]string, len(queries))
	for i, v := range queries {
		if v, ok := pure[v]; ok {
			ans[i] = v
			continue
		}
		nc := strings.ToLower(v)
		if v, ok := nocase[nc]; ok {
			ans[i] = v
			continue
		}
		nv := noVowel(v)
		if v, ok := novow[nv]; ok {
			ans[i] = v
			continue
		}
		ans[i] = ""
	}
	return ans
}

func createPure(wl []string) map[string]string {
	ans := make(map[string]string)
	for _, v := range wl {
		ans[v] = v
	}
	return ans
}
func createNoCase(wl []string) map[string]string {
	tmp := make([]string, len(wl))
	ans := make(map[string]string)
	for i, v := range wl {
		tmp[i] = strings.ToLower(v)
	}
	for i, v := range wl {
		if _, ok := ans[tmp[i]]; !ok {
			ans[tmp[i]] = v
		}
	}
	return ans
}
func createNoVowel(wl []string) map[string]string {
	tmp := make([]string, len(wl))
	ans := make(map[string]string)
	for i, v := range wl {
		tmp[i] = noVowel(v)
	}
	for i, v := range wl {
		if _, ok := ans[tmp[i]]; !ok {
			ans[tmp[i]] = v
		}
	}
	return ans
}

func noVowel(str string) string {
	str = strings.ToLower(str)
	for _, char := range []string{"a", "e", "i", "o", "u"} {
		str = strings.ReplaceAll(str, char, "a")
	}
	return str
}
