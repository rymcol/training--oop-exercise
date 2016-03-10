//
//  GameAudio.swift
//  oop-exercise
//
//  Created by Ryan Collins on 2016-03-09.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import Foundation
import AVFoundation

class GameAudio {
    
    let audioURL: NSURL?
    var audio: AVAudioPlayer?
    
    init(audioFileName: String, audioFileType: String, volume: Float) {
        let path = NSBundle.mainBundle().pathForResource(audioFileName, ofType: audioFileType)
        
        if let audioPath = path {
            audioURL = NSURL(fileURLWithPath: audioPath)
        } else {
            audioURL = nil
        }
        
        audio = nil
        
        do {
            try audio = AVAudioPlayer(contentsOfURL: audioURL!)
            audio!.prepareToPlay()
            audio!.volume = volume
        } catch let error as NSError {
            print(error.description)
        }
        
    }
    
    func play() {
        if let player = audio {
            player.play()
        }
    }
    
}