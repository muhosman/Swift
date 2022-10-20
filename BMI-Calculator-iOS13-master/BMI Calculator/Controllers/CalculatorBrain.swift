//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Osman Talha Aydın on 19.10.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

class CalculatorBrain{
    
    var BMI:Float?
    
    init(BMI: Float) {
        self.BMI = BMI
    }
    
    func calculateBMI(height:Float,weight:Float){
        self.BMI = weight * pow(height, height)
    }
    func getBMI()->Float{
        return self.BMI!
    }
}
