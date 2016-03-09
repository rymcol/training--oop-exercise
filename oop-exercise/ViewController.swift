//
//  ViewController.swift
//  oop-exercise
//
//  Created by Ryan Collins on 2016-03-09.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var leftPlayerImage: UIImageView!
    @IBOutlet weak var rightPlayerImage: UIImageView!
    @IBOutlet weak var hudLabel: UILabel!
    
    var backgroundAudio: AVAudioPlayer!
    var buttonSound: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let backgroundAudioPath = NSBundle.mainBundle().pathForResource("purple-heaven", ofType: "mp3")
        let buttonAudioPath = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        
        var backgroundAudioURL: NSURL?
        var buttonAudioURL: NSURL?
        
        if let path = backgroundAudioPath {
            backgroundAudioURL = NSURL(fileURLWithPath: path)
        }
        
        if let path = buttonAudioPath {
            buttonAudioURL = NSURL(fileURLWithPath: path)
        }
        
        do {
            try backgroundAudio = AVAudioPlayer(contentsOfURL: backgroundAudioURL!)
            backgroundAudio.prepareToPlay()
            backgroundAudio.volume = 0.15
            backgroundAudio.play()
        } catch let error as NSError {
            print(error.description)
        }
        
        do {
            try buttonSound = AVAudioPlayer(contentsOfURL: buttonAudioURL!)
            buttonSound.prepareToPlay()
            buttonSound.volume = 0.25
        } catch let error as NSError {
            print(error.description)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func leftAttackPressed(sender: UIButton) {
        
        buttonSound.play()
        
    }
    
    
    @IBAction func rightAttackButton(sender: UIButton) {
        
        buttonSound.play()
        
    }


}

