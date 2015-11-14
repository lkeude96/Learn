//
//  AppDelegate.swift
//  ObjC vs Swift
//
//  Created by Eude Kinsley Lesperance on 11/14/15.
//  Copyright © 2015 uoft. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func loadStuff() {
        let cities = [
            City(name: "Toronto", population: 3000000),
            City(name: "Vancouver", population: 5),
        ]
        
        let canada = Country(name: "Canada", cities: cities)
        
        let vancouver = canada.findCityWithName("Vancouver")
        let largestCity = canada.cityWithLargestPopulation
        
    }
}

