//
//  City.swift
//  ObjC vs Swift
//
//  Created by Eude Kinsley Lesperance on 11/14/15.
//  Copyright © 2015 uoft. All rights reserved.
//

import UIKit

class City {
    let name: String
    let population: Int;
    
    init(name: String, population: Int) {
        self.name = name
        self.population = population
    }
}

class Country {
    let name: String
    let cities: [City]
    
    init(name: String, cities: [City]) {
        self.name = name
        self.cities = cities
    }
    
    func findCityWithName(name: String) -> City? {
        for city in cities {
            if city.name == name {
                return city
            }
        }
        return nil
    }
}