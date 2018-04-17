//
//  15MINPraticeViewController.swift
//  ForJo
//
//  Created by wilson on 2018/4/13.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit
public var timer:Timer!
var test = true

class MIN15ViewController: UIViewController {
    
    @IBOutlet weak var btnPauseUI: UIButton!
    @IBOutlet weak var exitBTNUI: UIButton!
    @IBOutlet weak var naviBarTitle: UILabel!
    @IBOutlet weak var detail: UIView!
    func startTimer(){
        timerB = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(tickDownB), userInfo: nil, repeats: true)
    }
    
    func stopTimer(){
        timerB.invalidate()
    }

    @IBOutlet weak var exerciseIMG: UIView!
    var countNumber = 5
    
    @IBAction func btnPause(_ sender: UIButton) {
        exitBTNUI.isHidden = false
        stopTimer()
        detail.isHidden = false
        btnPauseUI.isHidden = true
    }

    @IBOutlet weak var countNumberLabel: UILabel!
   
    @IBAction func exitBTN(_ sender: Any) {
        btnPauseUI.isHidden = false
        exitBTNUI.isHidden = true
        self.startTimer()
        self.detail.isHidden = true
    }
    
    override func viewDidLoad() {
        exitBTNUI.isHidden = true
        detail.isHidden = true
        exerciseIMG.isHidden = true
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor(red: 74/255, green: 74/255, blue: 74/255, alpha: 1/1)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(tickDown), userInfo: nil, repeats: true)
       
    }
    
    @objc public func tickDownB(){
        playSound(soundName:"2")
        }
    @objc public func tickDown(){
        countNumber -= 1
        print(countNumber)
        if countNumber >= 1 {
            playSound(soundName:"BEE")
            countNumberLabel.text = "\(countNumber)"
           
        } else if countNumber == 0 {
            naviBarTitle.text = "15分鐘肌力訓練"
            exerciseIMG.isHidden = false
            playSound(soundName:"1")
            timer.invalidate()
            startTimer()
            return()
        }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
