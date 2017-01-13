//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Arrays and Dictionaries


//Declaracion de un array
var animalArray = ["Lion","Bird","Cat","Dog","Snake"]

//Contar los elementos de un Array
animalArray.count

//Agregar un elemento al array *Al final
animalArray.append("Hamster")

//Remover elementos de un array, indicando la posicion en el arreglo 0 /n

animalArray.remove(at: 2)

//Imprimimos la referencia
animalArray

//Ordenamos en A/Z los elementos
animalArray.sort()

//Removemos todos los elementos del array
animalArray.removeAll()

//Imprimimos una referencia del array
animalArray

//Agregamos un elemento a nuestro arreglo
animalArray.append("Lion King")

//Imprimimos la referencia
animalArray


////// Dictionaries

// Declaracion nombre = [alias : valor]
var myDictionary = [ "pi" : 5, "time" : 20, "velocity": 60]

//Declaracion nombre : [Tipo : Tipo]
var dict : [String : Double]

//Reasignar valor en alias del diccionario
myDictionary["pi"] = 6

//Imprimimos la referencia
myDictionary

//Buscamos un valor dentro del diccionario
myDictionary["n"]

//Contamos los elementos del diccionario
myDictionary.count

//Buscamos el primer valor de derecha a izq, alias y valor
myDictionary.first

//Descripcion de los elementos del diccionario
myDictionary.description

//Verificamos si tiene elementos el diccionario
myDictionary.isEmpty

//Invertimos el diccionario
myDictionary.reversed()

//Removemos todos los elementos del diccionario
myDictionary.removeAll()

//Agregamos un valor con un alias al diccionario
myDictionary["newNumber"] = 100

//Imprimimos la referencia
myDictionary

//Ejercicio de Clase
let nimalArray = ["Lion","Turtle","Rabbit","Seal"]
nimalArray[2]