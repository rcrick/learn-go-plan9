package main

import (
	"fmt"

	"github.com/rcrick/learn-go-plan9/pkg"
)

func main() {
	fmt.Println(pkg.Num)
	fmt.Println(pkg.Name)
	// pkg中导出NameData，就可以进行修改
	// pkg.NameData[0] = '?'
	// fmt.Println(pkg.Name) //?ick
}
