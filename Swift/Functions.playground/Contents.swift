//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func newFunction() {
    str.append("s")
}

newFunction()

str

func deduction (Number1 : Int, Number2 : Int) -> Int{
    return Number1 - Number2
    
}

deduction(Number1: 5, Number2: 3)

func summation (no1 : Int, no2 : Int)->Int{
    return no1 + no2
}

summation(no1: 3, no2: 5)

func stringappender(String1 : String, String2 : String) ->String {
    return String1.appending(String2)
}

stringappender(String1: "Fer ", String2: "Ochoa")
