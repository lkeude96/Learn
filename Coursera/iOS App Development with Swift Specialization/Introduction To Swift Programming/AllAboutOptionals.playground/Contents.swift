//: Playground - noun: a place where people can play

import UIKit

class CupHolder {
    var cups: [String]? = nil
    
}

class Car {
    var cupHolders: CupHolder? = nil
}

let niceCar = Car()
niceCar.cupHolders = CupHolder()
niceCar.cupHolders?.cups = ["Sprite"]
//if var cupHolder = niceCar.cupHolders {
//    if var cups = cupHolder.cups {
//        cups.append("Coke")
//    } else {
//        cupHolder.cups = ["Coke"]
//    }
//}

if niceCar.cupHolders?.cups?.count > 0 {
    niceCar.cupHolders?.cups?[0] = "Coke"
} else {
    
}

if let cupHolder = niceCar.cupHolders {
    if let cups = cupHolder.cups {
        if (cups[0] == "Coke") {
            print("Yay")
        } else {
            print("Aww")
        }
    }
}

let firstCup = niceCar.cupHolders?.cups?[0]