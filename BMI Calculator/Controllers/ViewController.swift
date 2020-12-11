//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
        print(String(format: "%.2f", sender.value))
        
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        print(Int(sender.value))
        weightLabel.text = "\(String(Int(sender.value)))kg"
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = String(format: "%.2f", heightSlider.value)
        let weight = String(format: "%.2f", weightSlider.value)
        let heightSquared = Float(height)!*Float(height)!
        //        String(format: "%.2f", Float(weight)!/heightSquared)
        let bmi =   String(format: "%.2f", Float(weight)!/heightSquared)
        print(bmi)
        
    
    }
    
}

