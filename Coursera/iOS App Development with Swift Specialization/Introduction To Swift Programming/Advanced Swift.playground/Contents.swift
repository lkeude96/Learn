//: Playground - noun: a place where people can play

import UIKit

class Legs {
    var count: Int = 0
}

class Animal {
    var name: String = ""
    var legs: Legs = Legs()
}

public class LegVet {
    weak var legs: Legs? = nil
}

let dog = Animal()
let vet = LegVet()
vet.legs = dog.legs