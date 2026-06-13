package main

import "fmt"

type Trial struct {
	ID        int
	Name      string
	isWorking bool
}

func updateWorkingStatus(trail *Trial) *Trial {
	trail.isWorking = true
	return trail
}

func main() {
	trial := Trial{
		ID:        1,
		Name:      "some name",
		isWorking: false,
	}
	updateWorkingStatus(&trial)
	fmt.Println(trial)
	fmt.Println("It works I guess")
}
