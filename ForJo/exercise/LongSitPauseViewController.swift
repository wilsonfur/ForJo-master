//
//  LongSitPauseViewController.swift
//  ForJo
//
//  Created by wilson on 2018/5/16.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit
import AVKit

class LongSitPauseViewController: UIViewController {
    
    @IBOutlet weak var prepareLabel: UILabel!
    @IBOutlet weak var progressbar: UIView!
    @IBOutlet weak var slideShowPause: UIImageView!
    @IBOutlet weak var countMovie: UIView!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var slideShow: UIImageView!
    @IBOutlet weak var bottomBTNUI: UIButton!
    @IBOutlet weak var exitBTNUI: UIButton!
    
    var videoPlayer: AVPlayer?
    func configurePlayer(videoName:String) {
        let url = Bundle.main.url(forResource: videoName, withExtension: "m4v")
        let item = AVPlayerItem(url: url!)
        videoPlayer = AVPlayer(playerItem: item)
        let layer = AVPlayerLayer(player: videoPlayer)
        countMovie.layer.addSublayer(layer)
        layer.frame = CGRect(x: 0, y: 0, width: 375, height: 240)
        layer.videoGravity = AVLayerVideoGravity.resizeAspect;
    }
    
 
    
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
        //倒數5秒
        case 1:
            videoPlayer?.play()
            countMovie.isHidden=false
            timeCount = 15
            playSound(soundName:"BEE")
        case 2...5:
            playSound(soundName:"BEE")
        //運動15秒
        case 6:
            prepareLabel.text = "維持動作"
            timeCount -= 1
            playSound(soundName:"DOM")
            countLabel.alpha = 1
            countMovie.isHidden=true
            imgArr = [UIImage(named:"久坐1-1.png")!,UIImage(named:"久坐1-2.png")!]
            playRepeatAni(Duration: 2, RepeatCount: 0)
        case 7...20:
            timeCount -= 1
        //倒數5秒
        case 21:
            prepareLabel.text = "準備"
            timeCount -= 1
            playSound(soundName:"BEE")
            configurePlayer(videoName: "伸展準備_02久坐")
            videoPlayer?.play()
            countLabel.alpha = 0.1
            countMovie.isHidden=false
            timeCount = 15
        case 22...25:
            playSound(soundName:"BEE")
        //運動15秒
        case 26:
            timeCount -= 1
            videoPlayer?.play()
            playSound(soundName:"DOM")
            prepareLabel.text = "維持動作"
            countLabel.alpha = 1
            countMovie.isHidden=true
            configurePlayer(videoName: "伸展準備_02久坐")
            videoPlayer?.play()
            imgArr = [UIImage(named:"久坐2-1.png")!,UIImage(named:"久坐2-2.png")!]
            playRepeatAni(Duration: 2, RepeatCount: 0)
        case 27...40:
            timeCount -= 1
        //倒數5秒
        case 41:
            configurePlayer(videoName: "伸展準備_02久坐展")
            videoPlayer?.play()
            prepareLabel.text = "準備"
            playSound(soundName:"BEE")
            countLabel.alpha = 0.1
            countMovie.isHidden=false
            timeCount = 15
        case 42...44:
            playSound(soundName:"BEE")
        //運動15秒
        case 45:
            timeCount -= 1
            prepareLabel.text = "維持動作"
            countLabel.alpha = 1
            playSound(soundName:"DOM")
            countMovie.isHidden=true
            imgArr = [UIImage(named:"久坐3-1.png")!,UIImage(named:"久坐3-2.png")!]
            playRepeatAni(Duration: 2, RepeatCount: 0)
        case 46...59:
            timeCount -= 1
        case 60:
             print("okay")
        case 61:
            dismiss(animated: true)
        default:
          stopTimer()
        }
       
    }

    var imgArr = [UIImage(named:"久坐1-1.png")!,UIImage(named:"久坐1-2.png")!]
    var imgArrPause = [UIImage(named:"久坐暫停1-1.png")!,UIImage(named:"久坐暫停1-2.png")!]
    var btnDetect = true

    @IBAction func exitBTN(_ sender: Any) {
        dismiss(animated: false)
    }

    @IBAction func bottomBTN(_ sender: UIButton) {
        btnDetect = !btnDetect
        if btnDetect == false {
            stopTimer()
            countLabel.isHidden=true
            exitBTNUI.isHidden = false
            bottomBTNUI.setTitle("繼續運動", for: .normal)
            playRepeatAniPause()
            slideShowPause.isHidden = false
            videoPlayer?.pause()
        } else {
            startTimer()
            countLabel.isHidden=false
            exitBTNUI.isHidden = true
            bottomBTNUI.setTitle("暫停運動", for: .normal)
            imgArr = [UIImage(named:"久坐暫停1-1.png")!,UIImage(named:"久坐暫停1-2.png")!]
            slideShowPause.isHidden = true
            videoPlayer?.play()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurePlayer(videoName: "伸展準備_02久坐")
        exitBTNUI.isHidden = true
        startTimer()
        countLabel.text = "00:15"
        countLabel.alpha = 0.1
        prepareLabel.text = "準備"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
