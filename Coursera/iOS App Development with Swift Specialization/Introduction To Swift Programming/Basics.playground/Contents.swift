//: Playground - noun: a place where people can play

import UIKit

var constantString = "Hi"
var str:String? = "Hello, playground"

//str = nil

print(str)

//var counter = 0

for counter in 0..<10 {
    guard counter != 2 else { continue }
    
    if counter != 5 {
        print(counter)
    }
}