//
//  ViewController.swift
//  timerProject
//
//  Created by Yakup on 24.07.2019.
//  Copyright © 2019 Yakup. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var timeLabel1: UILabel!
    var timer = Timer()
    var counter = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        counter = 10
        
        timeLabel1.text = "Time: \(counter)"
        
    
    }

    @objc func timerFunction (){
        
        timeLabel1.text = "Time: \(counter)"
        counter = counter - 1
        
        if counter == 0{
            timer.invalidate()
            timeLabel1.text = "Süre Bitti"
            
        }
    }

    @IBAction func buttonClicked(_ sender: Any) {
         timer.invalidate()
     counter = 10
    timer =  Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    
    }
}

