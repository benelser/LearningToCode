package main

import (
	"fmt"
	"time"
)

func main() {

	sayHello("Benjamin", getAge(1987))
	sayHello("Bob", getAge(2010))
	sayHello("Andrew", getAge(1999))

}

func sayHello(name string, age int) {

	if age < 21 {
		fmt.Printf("Hey there %s. You are %v years old! You cannot drink\n", name, age)
	} else {
		fmt.Printf("Hey there %s. You are %v years old! Enjoy your DRANK!!!\n", name, age)
	}
}

func getAge(BirthYear int) (age int) {

	time := time.Now()
	currentYear := time.Year()
	return currentYear - BirthYear

}
