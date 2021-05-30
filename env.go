package main

import (
  "os"
  "fmt"
  "strings"
  "log"
)

func main() {
	for _, element := range os.Environ() {
        variable := strings.Split(element, "=")
        fmt.Println(variable[0],"=>",variable[1])
	f, err := os.OpenFile("data.txt",os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0644)

    if err != nil {
        log.Fatal(err)
    }

    defer f.Close()

    _, err2 := f.WriteString(element+"\n")

    if err2 != nil {
        log.Fatal(err2)
    }
  }
}
