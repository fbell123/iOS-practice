//
//  ViewController.swift
//  App-1
//
//  Created by Frankie Bell on 03/01/2017.
//  Copyright © 2017 Frankie Bell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fingersGuessed: UITextField!
    @IBOutlet weak var correctFingers: UILabel!
    
    @IBAction func guessButton(_ sender: Any) {
        let randNum = String(arc4random_uniform(6))
        
        if fingersGuessed.text == randNum {
            correctFingers.text = "Correct!"
        } else {
          correctFingers.text = "Wrong! It was a " + randNum + "."
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

