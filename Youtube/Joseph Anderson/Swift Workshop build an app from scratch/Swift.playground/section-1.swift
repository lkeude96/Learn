// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var i = 10

var f = 3.14

var arr = [ "a", "b", "c" ]
arr.append("d")
arr.removeAtIndex(0)
arr.removeLast()

println(arr)

str += " add"

var hello = "\(str) second"
println(hello)

var format = String(format: "%04d", i)

if i < 100 {
    println("do something")
} else {
    println("this will not execute")
}

var d = NSDate.date()





