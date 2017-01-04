//
//  ViewController.swift
//  menu bars
//
//  Created by Frankie Bell on 04/01/2017.
//  Copyright © 2017 Frankie Bell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var counter = 210
    
    @IBOutlet weak var countdownTimer: UILabel!
    
    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func playButton(_ sender: Any) {
        timer.invalidate()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func minusTen(_ sender: Any) {
        counter -= 10
        countdownTimer.text = "\(counter)"
    }
    
    @IBAction func plusTen(_ sender: Any) {
        counter += 10
        countdownTimer.text = "\(counter)"
    }
    
    @IBAction func resetTimer(_ sender: Any) {
        counter = 210
        countdownTimer.text = "\(counter)"
    }
    
    func processTimer() {
        if counter >= 1 {
        counter -= 1
        countdownTimer.text = "\(counter)"
        } else {
            countdownTimer.text = "Completed"
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

