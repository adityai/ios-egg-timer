//
//  ViewController.swift
//  EggTimer
//
//  Created by Aditya Inapurapu on 3/30/17.
//  Copyright © 2017 Aditya Inapurapu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = Timer()
    var time = 210
    
    func countDownTimer() {
        if (time > 0) {
            time -= 1
            timerLabel.text = String(time)
        } else {
            timer.invalidate()
        }
    }
    
    @IBAction func pauseButton(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func play(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDownTimer), userInfo: nil, repeats: true)
    }

    @IBAction func resetButton(_ sender: Any) {
        timer.invalidate()
        time = 210
        timerLabel.text = String(time)
    }

    @IBAction func minusTenButton(_ sender: Any) {
        if (time-10 > 0) {
            time -= 10
            timerLabel.text = String(time)
        }   }
    
    @IBAction func plusTenButton(_ sender: Any) {
        time += 10
        timerLabel.text = String(time)
    }
    
    @IBOutlet weak var timerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

