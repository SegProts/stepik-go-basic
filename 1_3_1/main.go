package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	fmt.Println("Привет! Как тебя зовут?")

	var name string
	fmt.Scan(&name)
	fmt.Println("Привет, " + name)

	fmt.Println("Нажмите Enter для завершения программы...")
	bufio.NewReader(os.Stdin).ReadBytes('\n')

	// Ожидание нажатия клавиши Enter перед завершением
	fmt.Println("Нажмите Enter для выхода...")
	fmt.Scanln()
}
