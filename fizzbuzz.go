// Language: Go
// To Run: go run fuzzbuzz.go

package main
import "fmt"

func fizzbuzz(from, to int) {
    for x := from; x <= to; x++ {
        fmt.Printf("%d ", x)
        if x % 3 == 0 { fmt.Printf("Fizz") }
        if x % 5 == 0 { fmt.Printf("Buzz") }
        fmt.Printf("\n")
    }
}

func main() {
    fizzbuzz(1, 100)
}

