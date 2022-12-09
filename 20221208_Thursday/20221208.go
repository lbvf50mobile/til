// Leetcode: 872. Leaf-Similar Trees.
// https://leetcode.com/problems/leaf-similar-trees/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 0 ms, faster than 100.00% of Go online submissions for Leaf-Similar Trees.
// Memory Usage: 2.4 MB, less than 87.88% of Go online submissions for Leaf-Similar Trees.
// 2022.12.08 Daily Challenge.
// 2022.12.09 Updated.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
 type stack struct{
   data []int
   n int
 }
 func (a * stack) init(){
   a.data = make([]int,0)
   a.n = 0
 }
 func (a * stack) full() bool{
   return len(a.data) > 0
 }
 func (a * stack) eq(b * stack) bool {
   if len(a.data) != len(b.data) {
     return false
   }
   for i,v := range a.data{
     if v != b.data[i] {
       return false
     }
   }
   return true
 }
 func (a * stack) push(x int){
   a.n += 1
   a.data = append(a.data,x)
 }
 func (a * stack) pop() int{
   a.n -= 1
   x := a.data[a.n]
   a.data = a.data[:a.n]
   return x
 }
 func (a * stack) shift() int{
   x := a.data[0]
   a.data = a.data[1:a.n]
   a.n -= 1
   return x
 }
func leafSimilar(root1 *TreeNode, root2 *TreeNode) bool {
  var a, b stack
  a.init();
  b.init();
  inorder(root1,&a)
  inorder(root2,&b)
  return a.eq(&b)
}

func inorder(r * TreeNode, s * stack){
  if nil == r { return }
  inorder(r.Left, s)
  if nil == r.Left && nil == r.Right {
    s.push(r.Val)
  }
  inorder(r.Right,s)
}
