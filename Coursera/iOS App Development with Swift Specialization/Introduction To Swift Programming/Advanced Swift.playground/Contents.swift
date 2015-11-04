//: Playground - noun: a place where people can play

import UIKit

class Car {
    var cupHolder: String
    
    required init(cupHolder: String) {
        self.cupHolder = cupHolder
    }

    deinit {
        
    }
}

let car = Car(cupHolder: "Cool")

