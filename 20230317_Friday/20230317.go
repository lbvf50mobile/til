// Leetcode: 208. Implement Trie (Prefix Tree).
// https://leetcode.com/problems/implement-trie-prefix-tree/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 81 ms, faster than 18.16% of Go online submissions for Implement Trie (Prefix Tree).
// Memory Usage: 17.6 MB, less than 48.34% of Go online submissions for Implement Trie (Prefix Tree).
// 2023.03.17 Daily Challenge.

type Trie struct {
	x map[string]*Trie
}

func Constructor() Trie {
	trie := new(Trie)
	trie.x = make(map[string]*Trie)
	return *trie
}

func (this *Trie) Insert(word string) {
	pnt := this
	for _, v := range word {
		str := string(v)
		if _, ok := pnt.x[str]; !ok {
			trie := new(Trie)
			trie.x = make(map[string]*Trie)
			pnt.x[str] = trie
		}
		pnt = pnt.x[str]
	}
	trie := new(Trie)
	pnt.x["end"] = trie
}

func (this *Trie) Search(word string) bool {
	pnt := this
	for _, v := range word {
		str := string(v)
		if npnt, ok := pnt.x[str]; ok {
			pnt = npnt
		} else {
			return false
		}
	}
	if _, ok := pnt.x["end"]; ok {
		return true
	}
	return false
}

func (this *Trie) StartsWith(prefix string) bool {
	pnt := this
	for _, v := range prefix {
		str := string(v)
		if npnt, ok := pnt.x[str]; ok {
			pnt = npnt
		} else {
			return false
		}
	}
	return true
}

/**
 * Your Trie object will be instantiated and called as such:
 * obj := Constructor();
 * obj.Insert(word);
 * param_2 := obj.Search(word);
 * param_3 := obj.StartsWith(prefix);
 */
