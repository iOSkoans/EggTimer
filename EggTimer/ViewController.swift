//
//  ViewController.swift
//  EggTimer
//
//  Created by Calvin Cheng on 13/8/15.
//  Copyright © 2015 Hello HQ Pte. Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var time = 0
    
    var timer = NSTimer()
    
    @IBOutlet weak var timerDisplay: UILabel!

    @IBAction func resetTimer(sender: AnyObject) {
        timer.invalidate()
        time = 0
        timerDisplay.text = "0"
    }
    
    @IBAction func startTimer(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseTimer(sender: AnyObject) {
        timer.invalidate()
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func result() {
        time++
        timerDisplay.text = String(time)
    }

}

