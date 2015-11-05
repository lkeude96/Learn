//: Playground - noun: a place where people can play

import UIKit

let image = UIImage(named: "sample")!

let rgbaImage = RGBAImage(image: image)!

let pixelCount = rgbaImage.width * rgbaImage.height
let avgRed = 118
let avgGreen = 98
let avgBlue = 83
let sum = avgRed + avgGreen + avgBlue

for y in 0..<rgbaImage.height {
    for x in 0..<rgbaImage.width {
        let index = y * rgbaImage.width + x
        
        var pixel = rgbaImage.pixels[index]
        
        let redDelta = Int(pixel.red) - avgRed
        let greenDelta = Int(pixel.green) - avgGreen
        let blueDelta = Int(pixel.blue) - avgBlue
        
        var modifier = 10
        if (Int(pixel.red) < avgRed) {
            modifier = 1
        }
        
        pixel.red = UInt8(max(min(255, avgRed + modifier * redDelta), 0))
//        pixel.green = UInt8(max(min(255, avgGreen + modifier * greenDelta), 0))
//        pixel.blue = UInt8(max(min(255, avgBlue + modifier * blueDelta), 0))
        rgbaImage.pixels[index] = pixel
    }
}

image
let newImage = rgbaImage.toUIImage()!