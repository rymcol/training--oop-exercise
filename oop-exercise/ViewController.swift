//
//  ViewController.swift
//  oop-exercise
//
//  Created by Ryan Collins on 2016-03-09.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftPlayerImage: UIImageView!
    @IBOutlet weak var rightPlayerImage: UIImageView!
    @IBOutlet weak var hudLabel: UILabel!
    
    var backgroundAudio: GameAudio!
    var buttonSound: GameAudio!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgroundAudio = GameAudio(audioFileName: "purple-heaven", audioFileType: "mp3", volume: 0.15)
        buttonSound = GameAudio(audioFileName: "btn", audioFileType: "wav", volume: 0.20)
        
        backgroundAudio.play()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func attackPressed(sender: UIButton) {
        
        buttonSound.play()
        
    }


}

