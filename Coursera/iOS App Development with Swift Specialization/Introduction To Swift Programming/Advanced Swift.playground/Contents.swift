//: Playground - noun: a place where people can play

import UIKit

var a = 3
var b = a

b = 5

a

struct number {
    var n: Int
    init(n: Int) {
        self.n = n
    }
}

var aNumber = number(n: 3)
var bNumber = aNumber

bNumber.n = 5

bNumber.n
aNumber.n
