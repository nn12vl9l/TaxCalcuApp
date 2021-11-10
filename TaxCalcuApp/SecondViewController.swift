//
//  SecondViewController.swift
//  TaxCalcuApp
//
//  Created by 小倉瑞希 on 2021/11/09.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = ""
        var sum = 0.0
        
        let userDefaults = UserDefaults.standard
        if userDefaults.object(forKey: "items") != nil {
            let items = userDefaults.object(forKey: "item") as! [String]
            for item in items {
                sum = sum + Double(item)!
            }
            resultLabel.text = String(sum)
        }
    }
}
