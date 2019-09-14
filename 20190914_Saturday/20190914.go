    // Go: Repeat Type Conversions " " == string(rune). 
    package main

    import (
        "fmt"
    )

    /*
Runtime: 0 ms, faster than 100.00% of Go online submissions for Length of Last Word.
Memory Usage: 2.2 MB, less than 100.00% of Go online submissions for Length of Last Word.
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
