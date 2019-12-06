package main

import (
	"encoding/csv"
	"fmt"
	"io"
	"log"
	"os"
	"strconv"
)

func main() {
	file, err := os.Open("../data.csv")
	if err != nil {
		log.Fatalf("Something went bad reading file: %v", err)
	}
	//scanner := bufio.NewScanner(csv)

	r := csv.NewReader(file)
	r.FieldsPerRecord = 3

	counter := 0
	for {
		// Discard header
		if counter == 0 {
			_, err := r.Read()
			if err == io.EOF {
				break
			}
			if err != nil {
				log.Fatal(err)
			}
			counter++
			continue
		}
		// Read rest of csv
		record, err := r.Read()
		if err == io.EOF {
			break
		}
		if err != nil {
			log.Fatal(err)
		}

		// convert age to int and create a person struct foreach row in csv data
		age, _ := strconv.ParseInt(record[2], 10, 32)
		p := Person{record[0], record[1], int(age)}
		fmt.Println(p)

	}

}

type Person struct {
	// FieldName type
	FName string
	LName string
	Age   int
}
