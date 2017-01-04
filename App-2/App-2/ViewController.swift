//
//  ViewController.swift
//  App-2
//
//  Created by Frankie Bell on 04/01/2017.
//  Copyright © 2017 Frankie Bell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var isItPrime: UILabel!
    @IBOutlet weak var integerEntered: UITextField!
    
    @IBAction func primeCheck(_ sender: Any) {
        
        if let integerEnteredString = integerEntered.text {
            let entered = Int(integerEnteredString)
            
            if let number = entered {
                
                var isPrime = true
                
                if number == 1 {
                    isPrime = false
                }
                
                var i = 2
                
                while i < number {
                    if number % i == 0 {
                        isPrime = false
                    }
                    i += 1
                }
                if isPrime {
                    isItPrime.text = "\(number) is prime!"
                } else {
                    isItPrime.text = "\(number) is not prime."
                }
                
            } else {
                isItPrime.text = "Please enter a positive whole number"
            }
            
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

