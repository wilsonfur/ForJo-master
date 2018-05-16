//
//  LongSitPauseViewController.swift
//  ForJo
//
//  Created by wilson on 2018/5/16.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit

class LongSitPauseViewController: UIViewController {
    
    @IBOutlet weak var progressbar: UIView!
    @IBOutlet weak var slideShowPause: UIImageView!
    @IBOutlet weak var countMovie: UIImageView!
    @IBOutlet weak var countLabel: UILabel!
    func playRepeatAni(Duration:Int,RepeatCount:Int){
        slideShow.animationImages = imgArr
        slideShow.animationDuration = TimeInterval(Duration)
        slideShow.animationRepeatCount = RepeatCount
        slideShow.startAnimating()
    }
    func playRepeatAniPause(){
        slideShowPause.animationImages = imgArrPause
        slideShowPause.animationDuration = 2
        slideShowPause.animationRepeatCount = 0
        slideShowPause.startAnimating()
    }
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1 ,target: self, selector: #selector(tickDown), userInfo: nil, repeats: true)
    }
    
    func stopTimer(){
        timer.invalidate()
    }
    var timeCount = 15
    var count = 0

    @objc public func tickDown(){
        progressbar.frame.size.width = CGFloat(6.1475) * CGFloat(count)
        
        if timeCount < 10 {
             countLabel.text = "00:0" + "\(timeCount)"
        } else {
             countLabel.text = "00:" + "\(timeCount)"
        }
       
        count += 1
        print(count)

        switch count {
        case 1...5:
            countMovie.isHidden=false
            timeCount = 15
        case 6:
            countLabel.alpha = 1
            countMovie.isHidden=true
            imgArr = [UIImage(named:"久坐1-1.png")!,UIImage(named:"久坐1-2.png")!]
            playRepeatAni(Duration: 2, RepeatCount: 0)
        case 6...21:
            timeCount -= 1
        case 21...25:
            countLabel.alpha = 0.1
            countMovie.isHidden=false
            timeCount = 15
        case 26:
            countLabel.alpha = 1
            countMovie.isHidden=true
            imgArr = [UIImage(named:"久坐2-1.png")!,UIImage(named:"久坐2-2.png")!]
            playRepeatAni(Duration: 2, RepeatCount: 0)
        case 26...41:
            timeCount -= 1
        case 41...45:
            countLabel.alpha = 0.1
            countMovie.isHidden=false
            timeCount = 15
        case 46:
            countLabel.alpha = 1
            countMovie.isHidden=true
            imgArr = [UIImage(named:"久坐3-1.png")!,UIImage(named:"久坐3-2.png")!]
            playRepeatAni(Duration: 2, RepeatCount: 0)
        case 46...61:
            timeCount -= 1
        case 62:
            dismiss(animated: true)
        default:
          print("okay")
          stopTimer()
        }
       
    }

    
    
    var imgArr = [UIImage(named:"久坐1-1.png")!,UIImage(named:"久坐1-2.png")!]
    var imgArrPause = [UIImage(named:"久坐暫停1-1.png")!,UIImage(named:"久坐暫停1-2.png")!]

    @IBOutlet weak var slideShow: UIImageView!
    @IBOutlet weak var bottomBTNUI: UIButton!
    @IBOutlet weak var exitBTNUI: UIButton!
    
    @IBAction func exitBTN(_ sender: Any) {
        dismiss(animated: false)
    }
    var btnDetect = true
    
    @IBAction func bottomBTN(_ sender: UIButton) {
       
        btnDetect = !btnDetect
        if btnDetect == false {
            stopTimer()
            countLabel.isHidden=true
      
            exitBTNUI.isHidden = false
            bottomBTNUI.setTitle("繼續運動", for: .normal)
            playRepeatAniPause()
            slideShowPause.isHidden = false
        } else {
            
            startTimer()
            countLabel.isHidden=false

            exitBTNUI.isHidden = true
            bottomBTNUI.setTitle("暫停運動", for: .normal)
            imgArr = [UIImage(named:"久坐暫停1-1.png")!,UIImage(named:"久坐暫停1-2.png")!]
            slideShowPause.isHidden = true
        }
       
    }
    
    
    

    
    override func viewDidLoad() {
        exitBTNUI.isHidden = true
        super.viewDidLoad()
        startTimer()
        countLabel.text = "00:15"
        countLabel.alpha = 0.1
   
        // Do any additional setup after loading the view.
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
