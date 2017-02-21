//
//  ViewController.swift
//  is it prime
//
//  Created by Wu, Guan-Ling on 2016/11/27.
//  Copyright © 2016年 Wu, Guan-Ling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userInput: UITextField!
    @IBOutlet weak var result: UILabel!
    
    @IBAction func submitButton(_ sender: Any) {
        let userInt = Int(userInput.text!)
        if let input = userInt {
        var i = input - 1
        var factors = 0
            if input > 1 && input == Int(Double(userInput.text!)!) && input < 10000000 {
                while i > 1 {
                    if input % i == 0 {
                        factors += 1
                    }
                    i -= 1
                    result.text = "Calculating..."
                }
                if factors == 0 {
                    result.text = "\(input) is a Prime"
                } else {
                    result.text = "Not a Prime"
                }
                
            } else {
                result.text = "Invalid input, should between 2 and 9999999"
            }
        } else {
            result.text = "Wrong, should be only an integer."
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

