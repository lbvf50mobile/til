// Leetcode: 113. Path Sum II.
// https://leetcode.com/problems/path-sum-ii/
// = = = = = = = = = = = = = =
// Accepted.
// Thanks God, Jesus Christ!
// = = = = = = = = = = = = = =
// Runtime: 8 ms, faster than 50.53% of Go online submissions for Path Sum II.
// Memory Usage: 4.7 MB, less than 55.16% of Go online submissions for Path Sum II.
/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
import "fmt"
func pathSum(root *TreeNode, targetSum int) [][]int {
  ans := [][]int{}
  path := []int{} 
  backtrack(root, 0, targetSum, path, &ans)
  return ans
}

func backtrack(node *TreeNode, sum int, target int, path []int, ans *[][]int){
  if nil == node {
    return
  }
  sum += node.Val
  path = append(path,node.Val)
  //fmt.Printf("path %v\n",path)
  //fmt.Printf("Sum %v Target %v\n", sum, target)

  if sum == target && nil == node.Left && nil == node.Right {
    //fmt.Printf("Sum == Target\n")
    copy1 := make([]int, len(path))
    for i, val := range(path){
      copy1[i] = val
    }
    //fmt.Printf("Copy!: %v\n", copy1)

    *ans = append(*ans, copy1)
  }
  backtrack(node.Left, sum, target, path, ans)
  backtrack(node.Right, sum, target, path, ans)
  path =  path[:len(path)-1]
}
