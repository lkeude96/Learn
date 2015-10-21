//: Playground - noun: a place where people can play

import UIKit

func indexOf(name species: String, weight: Int) -> Int {
    switch species {
    case "duck":
        return 0 + weight
    case "human":
        return 100 + weight
    default: return -100 + weight
    }
}

indexOf(name: "duck", weight: 10)
indexOf(name: "human", weight: 70)
indexOf(name: "cows", weight: 95)