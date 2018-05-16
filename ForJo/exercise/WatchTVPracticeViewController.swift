//
//  WatchTVPracticeViewController.swift
//  ForJo
//
//  Created by wilson on 2018/5/16.
//  Copyright © 2018年 wilson. All rights reserved.
//

import UIKit

class WatchTVPracticeViewController: UIViewController {
    @IBOutlet weak var slideShow: UIImageView!
    @IBAction func exitBTN(_ sender: UIButton) {
        dismiss(animated: true)
    }
    @IBOutlet weak var backBTNUI: UIButton!
    @IBOutlet weak var nextBTNUI: UIButton!
    
    var imgArr = [UIImage(named:"看電視1-1.png")!,UIImage(named:"看電視1-2.png")!]
    
    func playRepeatAni(){
        slideShow.animationImages = imgArr
        slideShow.animationDuration = 3
        slideShow.animationRepeatCount = 0
        slideShow.startAnimating()
    }
    
    var ppcount = 1
    
    func playRule(){
        if ppcount == 1 {
            imgArr[0] = UIImage(named:"看電視1-1.png")!
            imgArr[1] = UIImage(named:"看電視1-2.png")!
            playRepeatAni()
            backBTNUI.isHidden = true
        }else if ppcount == 2 {
            imgArr[0] = UIImage(named:"看電視2-1.png")!
            imgArr[1] = UIImage(named:"看電視2-2.png")!
            playRepeatAni()
            backBTNUI.isHidden = false
            nextBTNUI.isHidden = false
        } else if ppcount == 3{
            imgArr[0] = UIImage(named:"看電視3-1.png")!
            imgArr[1] = UIImage(named:"看電視3-2.png")!
            playRepeatAni()
            nextBTNUI.isHidden = false
        } else if ppcount == 4{
            imgArr[0] = UIImage(named:"看電視4-1.png")!
            imgArr[1] = UIImage(named:"看電視4-2.png")!
            playRepeatAni()
            nextBTNUI.isHidden = true
            
        }
    }
    
    @IBAction func nextBTN(_ sender: Any) {
        ppcount += 1
        playRule()
    }
    @IBAction func backBTN(_ sender: Any) {
        ppcount -= 1
        playRule()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backBTNUI.isHidden = true
        playRepeatAni()
        
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
