//: Playground - noun: a place where people can play

import UIKit

let image = UIImage(named: "sample")!

let rgbaImage = RGBAImage(image: image)!

var totalRed = 0
var totalGreen = 0
var totalBlue = 0

for y in 0..<rgbaImage.height {
    for x in 0..<rgbaImage.width {
        let index = y * rgbaImage.width + x
        let pixel = rgbaImage.pixels[index]
        
        totalRed += Int(pixel.red)
        totalGreen += Int(pixel.green)
        totalBlue += Int(pixel.blue)
    }
}

let pixelCount = rgbaImage.width * rgbaImage.height
let avgRed = totalRed / pixelCount
let avgGreen = totalGreen / pixelCount
let avgBlue = totalBlue / pixelCount

let newImage = rgbaImage.toUIImage()!