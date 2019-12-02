package main

import (
	"fmt"
	"strings"
)

func main() {

	// var declaration
	var age int
	var name string

	// var initialization
	age = 20
	name = "Benjamin"

	// in-line initialization
	var yourName string = "Dan"

	// Condition check
	if age < 21 && strings.ToLower(name) == "benjamin" {
		// String formating
		fmt.Printf("Hey there %s. You are %v years old! You cannot drink\n", name, age)
	}

	fmt.Println(yourName + " is your name")

	// Begin of loops

	// Classic C for loop
	for index := 0; index < 5; index++ {

		fmt.Printf("Count of index is : %v\n", index)
	}

	// Create fixed array of int's
	numbers := [5]int{1, 2, 3, 4, 5}

	// Foreach loop
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
