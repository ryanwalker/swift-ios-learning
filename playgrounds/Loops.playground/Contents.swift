//: Playground - noun: a place where people can play

import UIKit

var index = 0

while index < 10 {
    index++
    println(index)
}

var arr = [1,2,3,4]
arr.count


var number = 2

var isPrime = true

if number == 1 {
    isPrime = false
}


if number != 1 && number != 2 {
    
    for var i = 2; i < number; i++ {
        if number % i == 0 {
            isPrime = false
            break
        }
        
    }

    
}

println(isPrime)
