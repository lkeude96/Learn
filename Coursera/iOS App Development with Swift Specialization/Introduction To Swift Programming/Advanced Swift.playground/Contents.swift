//: Playground - noun: a place where people can play

import UIKit

func performMagic(thingy: String) -> String {
    return thingy
}

performMagic("Hey")

var magicFunction = performMagic
magicFunction("Hey")

var newMagicFunction = {
    (thingy: String) -> String in
    return thingy
}

class number {
    var b: Int = 3
}
var aNumber = number()
var adderFunction: (Int) -> Int = {
    (a: Int) -> Int in
    return a + aNumber.b
}

adderFunction(1)

aNumber.b = 5

adderFunction(1)

func doComplicatedStuff(completion: () -> ()) {
    // does crazy stuff
    completion()
}
