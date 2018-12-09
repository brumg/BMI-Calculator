//
//  BMIModel.swift
//  IBM Calculator
//
//  Created by Bruna Matilde on 08/12/2018.
//  Copyright © 2018 nelbuiolaluce. All rights reserved.
//

import Foundation


class BMIModel {
    
var height : Double
var weight : Double

init(height: Double, weight: Double) {
        self.height = height
        self.weight = weight
}
    
    /// FAI UNA CLOSURE QUI
func bmi() -> Double {
        return round(weight/(height*height)*10000)
}
    
}
