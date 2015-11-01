//: Playground - noun: a place where people can play

import UIKit

class Legs {
    var count: Int = 0
}

class Animal {
    var name: String = ""
    var legs: Legs = Legs()
    
    var uppercaseName: String {
        get {
        return name.uppercaseString
        }
        set {
            name = newValue
        }
    }
    
}


let dog = Animal()
