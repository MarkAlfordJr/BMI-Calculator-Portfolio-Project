//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Mark Alford on 10/17/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit
import Foundation

class ResultsViewController: UIViewController {

    //2 initializes properties for CalculateViewController's prepare method (1) to send data to
    var bmiValue: String?
    var adviceValue: String?
    var color: UIColor?
    
    //sets up UI elements
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultBackground: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        //access this ViewContoller's UI elements, to populate them with (2)
        bmiLabel.text = bmiValue
        adviceLabel.text = adviceValue
        resultBackground.backgroundColor = color!
        
    }
    
    //when pressed, navigates back to CalculateViewController
    @IBAction func recalculatePressed(_ sender: UIButton) {
        //gets rid of screen when called
        self.dismiss(animated: true, completion: nil)
    }

}
