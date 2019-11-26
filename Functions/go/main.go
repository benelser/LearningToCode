package main

import (
	"fmt"
	"strings"
)

func main() {

	var age int
	var name string
	age = 20
	name = "Benjamin"
	var yourName string = "Dan"

	if age < 21 && strings.ToLower(name) == "benjamin" {
		fmt.Printf("Hey there %s. You are %v years old! You cannot drink\n", name, age)
	}

	fmt.Println(yourName + " is your name")

	// Begin of loops
	for index := 0; index < 5; index++ {

		fmt.Printf("Count of index is : %v\n", index)
	}

	numbers := [5]int{1, 2, 3, 4, 5}
	for _, num := range numbers {
		fmt.Println(num)
	}

	// While loop
	counter := 0
	for {
		if counter == 10 {
			break
		}
		fmt.Println(counter)
		counter += 2
	}
}
