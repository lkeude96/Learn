//: Playground - noun: a place where people can play

import UIKit

enum TypesOfVeggies : String {
    case Carrots
    case Tomatoes
    case Celery
}

let carrots = TypesOfVeggies.Carrots
carrots.rawValue

func eatVeggies(veggie: TypesOfVeggies) {
    
}

let randomVeggie = TypesOfVeggies(rawValue: "Lead")
eatVeggies(TypesOfVeggies.Carrots)
