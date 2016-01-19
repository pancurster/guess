package main
import "fmt"
import "math/rand"
import "time"
import "sync"

func main() {
    rand.Seed(time.Now().Unix())
    number := rand.Intn(100)
    score := 0
    c := make(chan int)
    var wg sync.WaitGroup

    go func() {
        for {
            answer := <-c;
            if (answer > number) {
                fmt.Println("Too BIG")
            } else if (answer < number) {
                fmt.Println("Too SMALL")
            } else {
                wg.Done()
            }
        }
    }()
    wg.Add(1)

    go func() {
        fmt.Printf("Guess number I thnik of:")
        for {
            score = score + 1
            var answer int
            fmt.Scanf("%d", &answer)
            c <-answer
        }
    }()

    wg.Wait()
    fmt.Println("You WIN!")
    fmt.Println("Score:", score)
}
