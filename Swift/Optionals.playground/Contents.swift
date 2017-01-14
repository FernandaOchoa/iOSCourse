//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Opcionales ?
var userName : String?

userName?.uppercased()


var userAge : Int

userAge = 5

let userCalculations = userAge * 5

//Cast String to Int Optional
var userA = ""

userA = "5"


let userCalc = Int(userA)! * 5

if let userCals = Int (userA){
    let newNumber = userCals * 5
} else {
    print("you have to give a number")
}