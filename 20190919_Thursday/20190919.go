    package main
// Go: Pointers to structs.
    import (
        "fmt"
    )

    type ListNode struct {
           Val int
             Next *ListNode
        }

    func deleteDuplicates(head *ListNode) *ListNode {
        var pointer, pointer2 * ListNode
        pointer = head
        for ; pointer != nil ; {
            pointer2 = pointer.Next
            for ; pointer2 != nil && pointer2.Val == pointer.Val ; {
                pointer2 = pointer2.Next
            }
            pointer.Next = pointer2
            pointer = pointer2
        }
        return head
        
    }
    
    func main() {
        one 
        fmt.Println("alias x='go run 20190919_Thursday/20190919.go'")
    }
