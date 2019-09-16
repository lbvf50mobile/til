    // Go: Repeat Type Conversions " " == string(rune); 

    // https://gist.github.com/lbvf50mobile/645c66085305bcc4fb18b06e9fde6f8c
    package main

    import (
        "fmt"
    )

/*
Runtime: 0 ms, faster than 100.00% of Go online submissions for Length of Last Word.
Memory Usage: 2.2 MB, less than 100.00% of Go online submissions for Length of Last Word.
https://leetcode.com/problems/length-of-last-word/submissions/
*/
func lengthOfLastWord(s string) int {
    word_starts := false
    counter := 0
    
    for i := len(s)-1; 0 <= i; i -= 1{
        if " " == string(s[i]) {
            if word_starts {
                break
            }
            
        }else{
            word_starts = true
            counter += 1
            
        }
        
    }
    
    return counter
    
}
    
    func main() {
        fmt.Println("alias x='go run 20190914_Saturday/20190914.go'")
        fmt.Println(5 == lengthOfLastWord("Hello World") )
    }
