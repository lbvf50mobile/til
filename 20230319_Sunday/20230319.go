// Leetcode: 211. Design Add and Search Words Data Structure.
// https://leetcode.com/problems/design-add-and-search-words-data-structure/
type WordDictionary struct {
  p map[string]*WordDictionary
  e bool
}


func Constructor() WordDictionary {
  x := WordDictionary{}
  x.p = make(map[string]*WordDictionary)
  x.e = false
}


func (this *WordDictionary) AddWord(word string)  {
  pnt := this
  for _,c := range word {
    ch := string(c)
    if v,o := pnt.p[ch]; ! o {
      pnt.p[ch] = new(WordDictionary)
      pnt.p[ch].p = make(map[string]*WordDictionary)
    }
    pnt = pnt.p[ch]
  }
  pnt.e = true
}


func (this *WordDictionary) Search(word string) bool {
    
}


/**
 * Your WordDictionary object will be instantiated and called as such:
 * obj := Constructor();
 * obj.AddWord(word);
 * param_2 := obj.Search(word);
 */
