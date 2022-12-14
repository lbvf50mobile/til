type RandomizedSet struct {
  n int
  a []int
  h map[int]int
}


func Constructor() RandomizedSet {
  return RandomizedSet{0, make([]int,0), make(map[int]int));
    
}


func (this *RandomizedSet) Insert(val int) bool {
  if _, ok := this.h[val]; ! ok {
    return false
  }
  this.a = append(this.a,val)
  this.h[val] = this.n 
  this.n += 1
  return true
}


func (this *RandomizedSet) Remove(val int) bool {
  if i, ok := this.h[val]; ! ok {
    return false
  }
  // Write last at the deleted place.
  last := this.a[this.n-1]
  this.h[last] = i
  delete(this.h, val)
  this.a = this.a[:this.n-1]
  this.n -= 1
  return true
}


func (this *RandomizedSet) GetRandom() int {
    
}


/**
 * Your RandomizedSet object will be instantiated and called as such:
 * obj := Constructor();
 * param_1 := obj.Insert(val);
 * param_2 := obj.Remove(val);
 * param_3 := obj.GetRandom();
 */
