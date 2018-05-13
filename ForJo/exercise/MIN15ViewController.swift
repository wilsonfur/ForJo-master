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
var countNumber = 5
var stepArray = ["1","DOM","2","DOM","3","DOM","4","DOM","5","DOM","6","DOM","7","DOM","8","DOM","9","DOM","10","DOM"]
var numStepArray = ["1/10次","1/10次","2/10次","2/10次","3/10次","3/10次","4/10次","4/10次","5/10次","5/10次","6/10次","6/10次","7/10次","7/10次","8/10次","8/10次","9/10次","9/10次","10/10次","10/10次"]
var countStep = 0
class MIN15ViewController: UIViewController {
    
  
    @IBOutlet weak var keepGoingUI: UIButton!
    @IBOutlet weak var numberStep: UILabel!
    @IBOutlet weak var btnPauseUI: UIButton!
    @IBOutlet weak var exitBTNUI: UIButton!
    @IBOutlet weak var naviBarTitle: UILabel!
    @IBOutlet weak var detail: UIView!
    func startTimer(){
        timerB = Timer.scheduledTimer(timeInterval: 2 ,target: self, selector: #selector(tickDownB), userInfo: nil, repeats: true)
    }
    
    func stopTimer(){
        timerB.invalidate()
    }

    @IBOutlet weak var exerciseIMG: UIView!
    @IBAction func keepGoing(_ sender: UIButton) {
        self.startTimer()
        self.detail.isHidden = true
        keepGoingUI.isHidden = true
        btnPauseUI.isHidden = false
        exitBTNUI.isHidden = true
    }
    
    @IBAction func btnPause(_ sender: UIButton) {
        exitBTNUI.isHidden = true
        stopTimer()
        detail.isHidden = false
        btnPauseUI.isHidden = true
        keepGoingUI.isHidden = false
    }
    @IBAction func exitBTN(_ sender: Any) {
        btnPauseUI.isHidden = false
        exitBTNUI.isHidden = true

    }
    
    @IBOutlet weak var countNumberLabel: UILabel!
   

    override func viewDidLoad() {
        btnPauseUI.isHidden = true
        keepGoingUI.isHidden = true
        countStep = 0
        countNumber = 5
        numberStep.isHidden = true
        exitBTNUI.isHidden = true
        detail.isHidden = true
        exerciseIMG.isHidden = true
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = UIColor(red: 74/255, green: 74/255, blue: 74/255, alpha: 1/1)
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(tickDown), userInfo: nil, repeats: true)
       
    }
    
    @objc public func tickDownB(){
        
        countStep += 1
        if countStep <= 19 {
            numberStep.text = numStepArray[countStep]
            playSound(soundName:stepArray[countStep])
        } else {
            timerB.invalidate()
        }
    }
    @objc public func tickDown(){
        countNumber -= 1
        print(countNumber)
        if countNumber >= 1 {
            playSound(soundName:"BEE")
            countNumberLabel.text = "\(countNumber)"
           
        } else if countNumber == 0 {
            btnPauseUI.isHidden = false
            naviBarTitle.text = "15分鐘肌力訓練"
            numberStep.isHidden = false
            exerciseIMG.isHidden = false
            playSound(soundName:"1")
            timer.invalidate()
            startTimer()
            return()
        }

    }
    override func viewDidDisappear(_ animated: Bool) {
          stopTimer()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
