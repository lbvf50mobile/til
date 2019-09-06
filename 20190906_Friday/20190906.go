
// Go pointers.

// https://gist.github.com/lbvf50mobile/2ed5fabdd33ddc2814d9b3d4458508af
// https://gist.github.com/lbvf50mobile/e7564f6d7a47006b739aa1df2eb46659

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 Runtime: 0 ms, faster than 100.00% of Go online submissions for Merge Two Sorted Lists.
Memory Usage: 2.5 MB, less than 92.86% of Go online submissions for Merge Two Sorted Lists.
 https://leetcode.com/problems/merge-two-sorted-lists/
 */
 func mergeTwoLists(l1 *ListNode, l2 *ListNode) *ListNode {
    
    var head * ListNode
    var cur * ListNode
    
    if nil == l1 && nil == l2 {
        return l1
    }
    if nil == l1 && nil != l2 {
        return l2
    }
    if nil == l2 && nil != l1 {
        return l1
    }
    
    // First I just need to set the Head
    
    a,b := (*l1).Val, (*l2).Val
    
    if a < b {
        head = l1
        cur = l1
        l1 = (*l1).Next
    }else{
        head = l2
        cur = l2
        l2 = (*l2).Next
    }
    
    for {
        if l1 == nil && l2 == nil {
            break
        }
        if l1 == nil && l2 != nil {
            (*cur).Next = l2
            cur = l2
            l2 = (*l2).Next
            continue
        }
        if l2 == nil && l1 != nil{
            (*cur).Next = l1
            cur = l1
            l1 = (*l1).Next
            continue
        }
        if l2 != nil && l1 != nil {
            a,b = (*l1).Val, (*l2).Val
    
            if a < b {
                (*cur).Next = l1
                cur = l1
                l1 = (*l1).Next
                continue
            }else{
                (*cur).Next = l2
                cur = l2
                l2 = (*l2).Next
                continue
            }
        }
    }
   return head
}