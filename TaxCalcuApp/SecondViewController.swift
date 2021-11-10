//
//  SecondViewController.swift
//  TaxCalcuApp
//
//  Created by 小倉瑞希 on 2021/11/09.
//

import UIKit

class SecondViewController: UIViewController {
    
    var resultArray:[Double] = []
    var sum:Double = 0
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultArray = UserDefaults.standard.object(forKey: "item") as! [Double]
        print(resultArray)
        sum = resultArray.reduce(0) { (num1:Double, num2:Double) -> Double in
            return num1 + num2
        }
        
        resultLabel.text = String(format: "%.0f", sum)
    }
    
}