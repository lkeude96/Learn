//: Playground - noun: a place where people can play

import UIKit

let image = UIImage(named: "sample")!

let rgbaImage = RGBAImage(image: image)!

let x = 20
let y = 20

let index = y * rgbaImage.width + x

var pixel = rgbaImage.pixels[index]

pixel.red = 255
pixel.green = 0
pixel.blue = 0


rgbaImage.pixels[index] = pixel

let newImage = rgbaImage.toUIImage()!