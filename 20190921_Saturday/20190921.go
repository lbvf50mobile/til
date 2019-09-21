    package main
    // Go: x := make([]int, 4); fills array with zeros. append([]int{1}, x...) will create 5 elements array.""
    import (
        "fmt"
    )
    
    func main() {
        // https://tour.golang.org/moretypes/11
        // Make fill slices with zeros
        // https://gist.github.com/lbvf50mobile/185fddd2b73bfe9f25a5c18227afab1b#file-pendulum-go-L4
        one := make([]int, 5)
        two := make([]int, 0)
        fmt.Println("alias x='go run 20190921_Saturday/20190921.go'")
        fmt.Println(append([]int{1},one...), "1 to the begining of one slice")
        fmt.Println(append([]int{1},two...),"1 to the begining of two slice")
    }
