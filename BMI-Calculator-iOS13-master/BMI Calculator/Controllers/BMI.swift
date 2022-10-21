//
//  BMI.swift
//  BMI Calculator
//
//  Created by Osman Talha Aydın on 22.10.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct BMI{
    let value:Float
    let color:UIColor
    let advice:String
    init(value: Float, color: UIColor, advice: String) {
        self.value = value
        self.color = color
        self.advice = advice
    }
}
