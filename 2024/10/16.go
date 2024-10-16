package main

import (
    "fmt"
    "strings"
)

func main() {
    var sa string
    fmt.Scan(&sa)
    var sb string
    fmt.Scan(&sb)
    var sc string
    fmt.Scan(&sc)

    saCount := len(sa)
    sbCount := len(sb)

    var aCount int
    aCount = strings.Count(sa,"a") + strings.Count(sb, "a") + strings.Count(sc, "a")
    var bCount int
    bCount = strings.Count(sa,"b") + strings.Count(sb, "b") + strings.Count(sc, "b")
    var cCount int
    cCount = strings.Count(sa,"c") + strings.Count(sb, "c") + strings.Count(sc, "c")

    if saCount > aCount {
        bLength := result(sa,"b", bCount)
        cLength := result(sa,"c", cCount)
        if bLength >= sbCount {
            fmt.Println("B")
        } else if bLength == cLength {
            sa = strings.Replace(sa, "a", "", -1)
            fmt.Println(strings.ToUpper(sa[:1]))
        } else {
            fmt.Println("C")
        }
    } else if sbCount > bCount {
        aLength := result(sb,"a", aCount)
        cLength := result(sb,"c", cCount)
        if aLength >= saCount {
            fmt.Println("A")
        } else if aLength == cLength {
            fmt.Println("A")
        } else {
            fmt.Println("C")
        }
    } else {
        aLength := result(sc,"a", aCount)
        bLength := result(sc,"b", bCount)
        if aLength >= saCount {
            fmt.Println("A")
        } else if aLength == bLength {
            fmt.Println("A")
        } else {
            fmt.Println("B")
        }
    }
}

func result(card string, cardWho string, allCount int) int{
    count := strings.Count(card, cardWho)
    return allCount - count
}
