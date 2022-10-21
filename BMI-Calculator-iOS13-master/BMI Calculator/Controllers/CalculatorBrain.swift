
import Foundation
import UIKit

class CalculatorBrain{
    
    var bmi:BMI?
    
    func calculateBMI(height:Float,weight:Float){
        let bmi_value = weight * pow(height, height)
        
        if bmi_value < 18.5 {
            bmi = BMI(value: bmi_value, color: UIColor.blue, advice: "Eat more pies!")
        }
        else if bmi_value < 24.9{
            bmi = BMI(value: bmi_value, color: UIColor.green, advice: "Fit as a fiddle!")
        }
        else{
            bmi = BMI(value: bmi_value, color: UIColor.red, advice: "Eat less pies!")
        }
    }
    func getBMI()->Float{
        return self.bmi?.value ?? 0.0
    }
    func getAdvice()->String{
        return self.bmi?.advice ?? ""
    }
    func getColor()->UIColor{
        return self.bmi?.color ?? UIColor.white
    }
}
