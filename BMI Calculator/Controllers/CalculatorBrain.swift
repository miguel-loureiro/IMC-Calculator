//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by António Loureiro on 16/08/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var imc: IMC?
    
    func getIMCValue() -> String {
        let imcTo1DecimalPlace = String(format: "%.1f", imc?.value ?? 0.0)
        return imcTo1DecimalPlace
    }
    
    mutating func calculateIMC(height: Float, weight: Float) {
        
        let imcValue = weight / (height * height)

        if imcValue < 18.5 {
            imc = IMC(value: imcValue, advice: "Eat more cakes", color: UIColor.blue)
        } else if imcValue < 24.9 {
            imc = IMC(value: imcValue, advice: "Fit", color: UIColor.green)
        } else {
            imc = IMC(value: imcValue, advice: "Eat less cakes", color: UIColor.red)
        }
//        imc = IMC(value: imcValue, advice: <#T##String#>, color: <#T##UIColor#>)
    }

    func getAdvice() -> String {
        return imc?.advice ?? "No advice"
    }

    func getColor() ->UIColor {
        return imc?.color ?? UIColor.white
    }
}
