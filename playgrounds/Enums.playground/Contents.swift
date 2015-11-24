//: Playground - noun: a place where people can play

import UIKit

enum Compass {
    case North(Int, Int)
    case South, East, West
}

var whereToGo = Compass.North(123, 777)
whereToGo = .South
whereToGo = .North(123, 456)

switch whereToGo {
case .North(let id):
    print(id)
case .South:
    print("south")
case .East:
    print("east")
case .West:
    print("west")
}

switch whereToGo {
case let .North(first, second):
    print("\(first) and \(second)")
default:
    print("somewhere")
}
