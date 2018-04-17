//
//  HomeViewController.swift
//  ForJo
//
//  Created by wilson on 2018/4/3.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit
var HomeStateCount = 1
var setCount = 1
public var timerB:Timer!
public var count = 13
class HomeViewFinalController: UIViewController{
    var countExercise = 0
    let shapelayer = CAShapeLayer()
    let sportslayer = CAShapeLayer()
 
    @IBOutlet weak var exerciseNumber: UILabel!
    @IBOutlet weak var suggestA: UIView!
    @IBOutlet weak var suggestB: UIView!
    @IBOutlet weak var suggestC: UIView!
    @IBOutlet weak var homeState: UIImageView!

    @IBOutlet weak var circleView: UIView!

    @IBAction func switchHomeState(_ sender: UIButton) {
        gg()
        countExercise = 0
        exerciseNumber.text = "0"
        HomeStateCount += 1
        if HomeStateCount%3 == 2 {
            count = 15
            homeState.image = UIImage(named:"h02")
            suggestA.isHidden = true
            suggestB.isHidden = false
            suggestC.isHidden = true
            handleTapC()
            handleTapB()
            
            
        }else if HomeStateCount%3 == 0{
            count = 5
            homeState.image = UIImage(named:"h03")
            suggestA.isHidden = true
            suggestB.isHidden = true
            suggestC.isHidden = false
            handleTapD()
            handleTapB()

            
            
        }else if HomeStateCount%3 == 1 {
            count = 13
            homeState.image = UIImage(named:"h01")
            suggestA.isHidden = false
            suggestB.isHidden = true
            suggestC.isHidden = true
            handleTap()
            handleTapB()

            
        }
        
        
        
    }
    
    
    
    @IBAction func test(_ sender: Any) {
    }

    
    
    @objc private func handleTap(){

        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        basicAnimation.toValue = 0.68
        basicAnimation.duration = 0.7
        basicAnimation.fillMode = kCAFillModeForwards
        basicAnimation.isRemovedOnCompletion = false
        
        shapelayer.add(basicAnimation, forKey: "urSoBasic")
    }
    @objc private func handleTapB(){
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        basicAnimation.toValue = 0.25
        basicAnimation.duration = 0.25
        basicAnimation.fillMode = kCAFillModeForwards
        basicAnimation.isRemovedOnCompletion = false
        
        sportslayer.add(basicAnimation, forKey: "urSoBasic")
    }
    @objc private func handleTapC(){
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        basicAnimation.toValue = 0.8
        basicAnimation.duration = 0.8
        basicAnimation.fillMode = kCAFillModeForwards
        basicAnimation.isRemovedOnCompletion = false
        
        shapelayer.add(basicAnimation, forKey: "urSoBasic")
    }
    @objc private func handleTapD(){
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        basicAnimation.toValue = 0
        basicAnimation.duration = 0
        basicAnimation.fillMode = kCAFillModeForwards
        basicAnimation.isRemovedOnCompletion = false
        
        shapelayer.add(basicAnimation, forKey: "urSoBasic")
    }
   

    
    @objc private func writeNumber(){
        countExercise += 1
        if exerciseNumber.text == "\(count)" {
            timerB.invalidate()
        } else {
            exerciseNumber.text = "\(countExercise)"
        }
    }
    
    func creativeShape(){
        let center = circleView.center
        //create my track layer
        let trackLayer = CAShapeLayer()
        let circularPath = UIBezierPath(arcCenter: center, radius: 73, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        
        trackLayer.path = circularPath.cgPath
        trackLayer.strokeColor = UIColor(red: 223/255,green: 223/255,blue: 223/255,alpha: 1).cgColor
        trackLayer.lineWidth = 7
        
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.lineCap = kCALineCapRound
        
        trackLayer.strokeEnd = 100
        
        view.layer.addSublayer(trackLayer)
        
        //create my shapeA layer
        
        shapelayer.path = circularPath.cgPath
        shapelayer.strokeColor = UIColor(red: 247/255,green: 122/255,blue: 37/255,alpha: 1).cgColor
        shapelayer.lineWidth = 8.1
        
        shapelayer.fillColor = UIColor.clear.cgColor
        shapelayer.lineCap = kCALineCapRound
        
        shapelayer.strokeEnd = 0
        
        view.layer.addSublayer(shapelayer)
        
        //create my sport layer
        
        sportslayer.path = circularPath.cgPath
        sportslayer.strokeColor = UIColor(red: 136/255,green: 202/255,blue: 62/255,alpha: 1).cgColor
        sportslayer.lineWidth = 8.2
        
        sportslayer.fillColor = UIColor.clear.cgColor
        sportslayer.lineCap = kCALineCapRound
        
        sportslayer.strokeEnd = 0
        
        view.layer.addSublayer(sportslayer)
        
    }
    
    
    func gg() {
        timerB = Timer.scheduledTimer(timeInterval: 0.03, target: self, selector: #selector(writeNumber), userInfo: nil, repeats: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let when = DispatchTime.now() + 0.65 // change 2 to desired number of seconds
        
        DispatchQueue.main.asyncAfter(deadline: when) {
            self.writeNumber()
            self.gg()
            self.creativeShape()
        }

        
        handleTap()
        handleTapB()
        suggestB?.isHidden = true
        suggestC?.isHidden = true
        
        
       
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
