//
//  WatchTVPauseViewController.swift
//  ForJo
//
//  Created by wilson on 2018/5/17.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit
import AVKit

class WatchTVPauseViewController: UIViewController {
    
    @IBOutlet weak var countLabelOrange: UILabel!
    @IBOutlet weak var prepareLabel: UILabel!
    @IBOutlet weak var slideShow: UIImageView!
    @IBOutlet weak var bottomBTNUI: UIButton!
    @IBOutlet weak var exitBTNUI: UIButton!
    @IBOutlet weak var progressbar: UIView!
    @IBOutlet weak var slideShowPause: UIImageView!
    @IBOutlet weak var countMovie: UIView!
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
    
    var videoPlayer: AVPlayer?
    func configurePlayer(videoName:String) {
        let url = Bundle.main.url(forResource: videoName, withExtension: "m4v")
        let item = AVPlayerItem(url: url!)
        videoPlayer = AVPlayer(playerItem: item)
        let layer = AVPlayerLayer(player: videoPlayer)
        countMovie.layer.addSublayer(layer)
        layer.frame = CGRect(x: 0, y: 0, width: 375, height: 540)
        layer.videoGravity = AVLayerVideoGravity.resizeAspect;
    }
    
    var timeCount = 1
    var count = 0
    
    @objc public func tickDown(){
        progressbar.frame.size.width = CGFloat(2.027) * CGFloat(count)
        count += 1
        print(count)
        
        switch count {
        //倒數5秒
        case 1:
            timeCount = 1
            playSound(soundName:"BEE")
            countLabelOrange.text = "4"
        case 2:
            playSound(soundName:"BEE")
            countLabelOrange.text = "3"
        case 3:
            playSound(soundName:"BEE")
            countLabelOrange.text = "2"
        case 4:
            playSound(soundName:"BEE")
            countLabelOrange.text = "1"
        case 5:
            playSound(soundName:"BEE")
           countLabelOrange.text = "0"
        case 6:
            countLabel.isHidden = false
            countLabelOrange.isHidden = true
            prepareLabel.frame = CGRect(x:127, y:415, width: 121, height: 21)
            playSound(soundName:"1")
            countMovie.isHidden=true
            imgArr = [UIImage(named:"exe1-1.png")!,UIImage(named:"exe1-2.png")!]
            playRepeatAni(Duration: 2, RepeatCount: 0)
        //輪播40秒
        case 6...7:
            countLabel.text = "1/10次"
        case 8:
            playSound(soundName:"DOM")
        case 9:
            playSound(soundName:"2")
            countLabel.text = "2/10次"
        case 10...11:
            countLabel.text = "2/10次"
        case 12:
            playSound(soundName:"DOM")
        case 13:
            playSound(soundName:"3")
            countLabel.text = "3/10次"
        case 14...15:
            countLabel.text = "3/10次"
        case 16:
            playSound(soundName:"DOM")
        case 17:
            playSound(soundName:"4")
            countLabel.text = "4/10次"
        case 18...19:
            countLabel.text = "4/10次"
        case 20:
            playSound(soundName:"DOM")
        case 21:
            playSound(soundName:"5")
            countLabel.text = "5/10次"
        case 22...23:
            countLabel.text = "5/10次"
        case 24:
            playSound(soundName:"DOM")
        case 25:
            playSound(soundName:"6")
            countLabel.text = "6/10次"
        case 26...27:
            countLabel.text = "6/10次"
        case 28:
            playSound(soundName:"DOM")
        case 29:
            playSound(soundName:"7")
            countLabel.text = "7/10次"
        case 30...31:
            countLabel.text = "7/10次"
        case 32:
            playSound(soundName:"DOM")
        case 33:
            playSound(soundName:"8")
            countLabel.text = "8/10次"
        case 34...35:
            countLabel.text = "8/10次"
        case 36:
            playSound(soundName:"DOM")
        case 37:
            playSound(soundName:"9")
            countLabel.text = "9/10次"
        case 38...39:
            countLabel.text = "9/10次"
        case 40:
            playSound(soundName:"DOM")
        case 41:
            playSound(soundName:"10")
            countLabel.text = "10/10次"
        case 42...44:
            countLabel.text = "10/10次"
        case 45:
            playSound(soundName:"DOM")
            configurePlayer(videoName: "倒數動畫")
            videoPlayer?.play()
        //休息30秒
        case 46...75:
            countMovie.isHidden=false
            timeCount = 1
        case 76:
            countMovie.isHidden=true
            imgArr = [UIImage(named:"exe2-1.png")!,UIImage(named:"exe2-2.png")!]
            playRepeatAni(Duration: 2, RepeatCount: 0)
            playSound(soundName:"1")
            countLabel.text = "1/10次"
        //輪播40秒
        case 76...78:
            countLabel.text = "1/10次"
        case 79:
            playSound(soundName:"DOM")
        case 80:
            countLabel.text = "2/10次"
            playSound(soundName:"2")
        case 81...82:
            countLabel.text = "2/10次"
        case 83:
            playSound(soundName:"DOM")
        case 84:
            countLabel.text = "3/10次"
            playSound(soundName:"3")
        case 85...86:
            countLabel.text = "3/10次"
        case 87:
            playSound(soundName:"DOM")
        case 88:
            countLabel.text = "4/10次"
            playSound(soundName:"4")
        case 89...90:
            countLabel.text = "4/10次"
        case 91:
            playSound(soundName:"DOM")
        case 92:
            countLabel.text = "5/10次"
            playSound(soundName:"5")
        case 93...94:
            countLabel.text = "5/10次"
        case 95:
            playSound(soundName:"DOM")
        case 96:
            countLabel.text = "6/10次"
            playSound(soundName:"6")
        case 97...98:
            countLabel.text = "6/10次"
        case 99:
            playSound(soundName:"DOM")
        case 100:
            countLabel.text = "7/10次"
            playSound(soundName:"7")
        case 101...102:
            countLabel.text = "7/10次"
        case 103:
            playSound(soundName:"DOM")
        case 104:
            countLabel.text = "8/10次"
            playSound(soundName:"8")
        case 105...106:
            countLabel.text = "8/10次"
        case 107:
            playSound(soundName:"DOM")
        case 108:
            countLabel.text = "9/10次"
            playSound(soundName:"9")
        case 109...110:
            countLabel.text = "9/10次"
        case 111:
            playSound(soundName:"DOM")
        case 112:
            countLabel.text = "10/10次"
            playSound(soundName:"10")
        case 113...114:
            countLabel.text = "10/10次"
        case 115:
            playSound(soundName:"DOM")
            configurePlayer(videoName: "倒數動畫")
            videoPlayer?.play()
         //休息30秒
        case 116...145:
            countMovie.isHidden=false
            timeCount = 1
        case 146:
            playSound(soundName:"1")
            countLabel.text = "1/10次"
            countMovie.isHidden=true
            imgArr = [UIImage(named:"exe3-1.png")!,UIImage(named:"exe3-2.png")!]
            playRepeatAni(Duration: 2, RepeatCount: 0)
        //輪播40秒
        case 147...148:
            countLabel.text = "1/10次"
        case 149:
            playSound(soundName:"DOM")
        case 150:
            playSound(soundName:"2")
            countLabel.text = "2/10次"
        case 151...152:
            countLabel.text = "2/10次"
        case 153:
            playSound(soundName:"DOM")
        case 154:
            playSound(soundName:"3")
            countLabel.text = "3/10次"
        case 155...156:
            countLabel.text = "3/10次"
        case 157:
            playSound(soundName:"DOM")
        case 158:
            playSound(soundName:"4")
            countLabel.text = "4/10次"
        case 159...160:
            countLabel.text = "4/10次"
        case 161:
            playSound(soundName:"DOM")
        case 162:
            playSound(soundName:"5")
            countLabel.text = "5/10次"
        case 163...164:
            countLabel.text = "5/10次"
        case 165:
            playSound(soundName:"DOM")
        case 166:
            playSound(soundName:"6")
            countLabel.text = "6/10次"
        case 167...168:
            countLabel.text = "6/10次"
        case 169:
            playSound(soundName:"DOM")
        case 170:
            playSound(soundName:"7")
            countLabel.text = "7/10次"
        case 171...172:
            countLabel.text = "7/10次"
        case 173:
            playSound(soundName:"DOM")
        case 174:
            playSound(soundName:"8")
            countLabel.text = "8/10次"
        case 175...176:
            countLabel.text = "8/10次"
        case 177:
            playSound(soundName:"DOM")
        case 178:
            playSound(soundName:"9")
            countLabel.text = "9/10次"
        case 179...180:
            countLabel.text = "9/10次"
        case 181:
            playSound(soundName:"DOM")
        case 182:
            playSound(soundName:"10")
            countLabel.text = "10/10次"
        case 183...185:
            countLabel.text = "10/10次"
        case 186:
            playSound(soundName:"DOM")
        //離開
        case 187:
            dismiss(animated: true)
        default:
            stopTimer()
        }
    }
    
    
    
    var imgArr = [UIImage(named:"久坐1-1.png")!,UIImage(named:"久坐1-2.png")!]
    var imgArrPause = [UIImage(named:"久坐暫停1-1.png")!,UIImage(named:"久坐暫停1-2.png")!]

    
    @IBAction func exitBTN(_ sender: Any) {
        dismiss(animated: true)
    }
    var btnDetect = true
    
    @IBAction func bottomBTN(_ sender: UIButton) {
        
        btnDetect = !btnDetect
        if btnDetect == false {
            stopTimer()
            exitBTNUI.isHidden = false
            bottomBTNUI.setTitle("繼續運動", for: .normal)
            playRepeatAniPause()
            slideShowPause.isHidden = false
        } else {
            startTimer()
            exitBTNUI.isHidden = true
            bottomBTNUI.setTitle("暫停運動", for: .normal)
            imgArr = [UIImage(named:"久坐暫停1-1.png")!,UIImage(named:"久坐暫停1-2.png")!]
            slideShowPause.isHidden = true
        }
        
    }
    
    override func viewDidLoad() {
        prepareLabel.frame = CGRect(x:127, y:128, width: 121, height: 21)
        exitBTNUI.isHidden = true
        super.viewDidLoad()
        startTimer()
        countLabel.text = "1/10次"
        countLabel.isHidden = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
