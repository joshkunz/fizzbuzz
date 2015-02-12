// Language: Go
// To Run: go run fuzzbuzz.go

package main
import "fmt"

func fizzbuzz(from, to int) {
    for x := from; x <= to; x++ {
        var fizzy, buzzy bool = x % 3 == 0, x % 5 == 0
        if fizzy { fmt.Printf("Fizz") }
        if buzzy { fmt.Printf("Buzz") }
        if !fizzy && !buzzy { fmt.Printf("%d ", x) }
        fmt.Printf("\n")
    }
}

func main() {
    fizzbuzz(1, 100)
}

