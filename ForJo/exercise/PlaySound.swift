//
//  PlayPiano.swift
//  piano
//
//  Created by wilson on 2018/1/31.
//  Copyright © 2018年 wilson. All rights reserved.
//

import Foundation
import AVFoundation

var soundName:String? = nil

//func播放聲音
var player: AVAudioPlayer?
func playSound(soundName:String) {
    guard let url = Bundle.main.url(forResource: soundName, withExtension: "mp3") else { return }
    do {
        try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
        try AVAudioSession.sharedInstance().setActive(true)
        player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.mp3.rawValue)
        guard let player = player else { return }
        player.play()
    }catch let error {
        print(error.localizedDescription)
    }
}

