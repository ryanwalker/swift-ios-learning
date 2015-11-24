//: Playground - noun: a place where people can play

import UIKit

var str = "Hello"
var anotherString = str + " Rob"

for character in anotherString {
    print(character)
}

var newTypeString = NSString(string: anotherString)
newTypeString.substringToIndex(5)
newTypeString.substringFromIndex(5)
newTypeString.substringWithRange(NSRange(location: 3, length: 5))
newTypeString.containsString("ob")

newTypeString.componentsSeparatedByString(" ")

newTypeString.uppercaseString
newTypeString.lowercaseString


var uriBase = "http://www.weather-forecast.com/locations/%@/forecasts/latest"
String(format: uriBase, "London")