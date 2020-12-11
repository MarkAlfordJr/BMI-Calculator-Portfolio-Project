//
//  calculatorBrain.swift
//  BMI Calculator
//
//  Created by Mark Alford on 10/17/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    //initializes the BMI file's object
    var bmi: BMI?
    
    //returns rounded value of bmi, from BMI struct
    mutating func getBMIValue() -> String {
          let bmiRounded = String(format: "%.1f", bmi?.value ?? 0.0)
          return bmiRounded
      }
    
    //returns advice string from BMI struct
    func getAdvice() -> String {
        return bmi?.advice ?? "no advice"
    }
    
    //returns color literal from BMI struct
    func getColor() -> UIColor {
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    //calculates bmi result, from UI elements in CalculateViewController
    //parameters: UI sliders for height and weight
    mutating func calculateBMI(height: Float, weight: Float) {
        
        let bmiValue = weight/(height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "eat more", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9  {
            bmi = BMI(value: bmiValue, advice: "in normal health", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
             bmi = BMI(value: bmiValue, advice: "eat less", color: #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        }
    }
    
}
