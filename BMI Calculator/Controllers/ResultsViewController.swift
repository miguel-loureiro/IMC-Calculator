//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by António Loureiro on 16/08/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    var imcValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var imcLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imcLabel.text = imcValue
        adviceLabel.text = advice
        adviceLabel.textColor = UIColor.black
        self.view.backgroundColor = color
    }

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
