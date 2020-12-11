//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    //initializes the calculatorBrain file's object, now can use its code
    var calcBrain = CalculatorBrain()
    
    //setup the UI elements of this VC
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Functionality
    
    //sets display for height UI slider, chooses value for height
    @IBAction func heightChanged(_ sender: UISlider) {
        heightLabel.text = "\(String(format: "%.2f", sender.value))m"
        print(String(format: "%.2f", sender.value))
    }
    
    //sets display for weight UI slider, chooses value for weight
    @IBAction func weightChanged(_ sender: UISlider) {
        weightLabel.text = "\(String(Int(sender.value)))kg"
        print(Int(sender.value))
    }
    
    //when pressed, calculates both height and weight from sliders
    //calls calculatorBrain method to solve result, then navigates to ResultsViewController
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        calcBrain.calculateBMI(height: height, weight: weight)
        
    //MARK: - Navigation
        
        //this method, allows navigation from one screen to another,
        //you must first connect the screens together. name the identifier, in this case, "GoToResults". the sender will be this class, aka self.
        //since this method is only in the buttonFunction, navigation happens only when this button is presses
        self.performSegue(withIdentifier: "GoToResults", sender: self)
        
    }
    
    //1 sends values to ResultsViewController's UI elements
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "GoToResults"{
            // Get the new view controller using segue.destination.
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = calcBrain.getBMIValue()
            destinationVC.adviceValue = calcBrain.getAdvice()
            destinationVC.color = calcBrain.getColor()
            
        }
    }
    
}

