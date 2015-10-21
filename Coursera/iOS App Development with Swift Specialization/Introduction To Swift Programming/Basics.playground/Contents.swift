//: Playground - noun: a place where people can play

import UIKit

var animals = ["chickens", "cows", "ducks"]
animals[1] = "geese"

var cuteness = [
    "chicken" : "somewhat",
    "ducks" : "cute",
    "geese" : "scary"
]


cuteness["ducks"]

for animal in animals {
    cuteness[animal]
}