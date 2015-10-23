//: Playground - noun: a place where people can play

import UIKit

var beautifulImage = [
    [3, 15, 3],
    [26, 3, 4],
    [14, 8, 22]
]


func raiseLowerNumbers(inout inImage image:[[Int]], to number:Int) {
    for i in 0..<image.count {
        for j in 0..<image[i].count {
            if image[i][j] < number {
                image[i][j] = number
            }
        }
    }
}

raiseLowerNumbers(inImage: &beautifulImage, to: 100)