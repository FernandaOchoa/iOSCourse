//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//While Loop

var number = 10

while number > 1 {
    number = number - 1
    print(number)
}

//For Loop

let animalArray = ["Snake","Pig","Cat","Dog","Mouse"]

for animal in animalArray {
    print(animal)
}
for element in animalArray {
    print(element)
}

var i = 1

for element in animalArray {
    i = i + 1
    print(element)
    print(i)
}

//For each

for number in 1 ... 10 {
    print(number)
}

let a = 16
for number in 1 ... a{
    print(number)
}


//Ejercicio
var fibonacciArray = [1,1,2,3,5,8,13]

for num in fibonacciArray {
    print(num * 4)
}