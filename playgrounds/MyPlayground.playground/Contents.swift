//: Playground - noun: a place where people can play

//String, Double, Int

import UIKit

var str = "Hello, playground"
let cow = 3.5
print(cow)



var aNewVar:String = "howdy"


var a:Int = 5
var b = a * 3
b * b

var c = 5/2
var d:Double = 5/2

5%2
5.5/2


d * Double(a)

print(cow)

var greeting:String = "Hi there, you have logged in \(a) times"

"\(str) \(aNewVar)"

var x = 3.5
var y = 4
var z = x * Double(y)

"3.5 * 4 = \(z)"

var animals:[String] = ["cow", "dog", "car", "whatever"]
animals.append("fish")
print(animals[0])
print(animals[2])
println(animals)
animals.removeLast()
println(animals)
// animals.append(1)

animals.removeRange(1...2)

var arr = ["string", 3, 3.3]

for x in arr {
    println(x)
}


var secrets = ["dog":"hi", "cat":"go away"]

print(secrets["dog"])


var dict = ["name": "bob", "age":32]
println(dict["name"]!) //! unwraps optionals
println(dict["named"])
//println(dict["named"]!) causes problems

dict["age"] = "old"
var theAge = dict["age"]
//dict["age"] = nil
//Lookup removing values from dictionaries

var name = dict["name"]
println(name)
var myString = "my name is \(name)"
println(myString)

var myName = "ryan"
if myName == "ryan" {
    println("indeed")
}

var number = 332
if number % 2 == 0 {
    println("even")
} else {
    println("odd")
}

var randomNumber = arc4random_uniform(10)


for var i = 1; i < 11; i++ {
    println(i)
}


var arra = [3,6,7]
for (index, x) in enumerate(arra) {
    arra[index] = x + 1
}





























