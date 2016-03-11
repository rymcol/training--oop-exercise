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
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    
    var backgroundAudio: GameAudio!
    var buttonSound: GameAudio!
    
    var game: Game!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgroundAudio = GameAudio(audioFileName: "purple-heaven", audioFileType: "mp3", volume: 0.15)
        buttonSound = GameAudio(audioFileName: "btn", audioFileType: "wav", volume: 0.20)
        
        backgroundAudio.play()
        game = Game()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func attackPressed(sender: UIButton) {
        
        buttonSound.play()
        let defender: Int
        let button: UIButton
        
        switch sender.tag {
        case 0:
            defender = 1
            button = rightButton
        case 1:
            defender = 0
            button = leftButton
        default:
            defender = 1
            button = rightButton
        }
        
        swapButtonHiddenState(button)
        
        NSTimer.scheduledTimerWithTimeInterval(3.0, target: self, selector: #selector(ViewController.swapButtonHiddenStateWithTimer(_:)), userInfo: button, repeats: false)
        
        if game.performAttackAndCheckForDeath(game.players[sender.tag], defender: game.players[defender]) {
            //Death
            hudLabel.text = "Player \(game.players[defender].name) Died"
            leftPlayerImage.hidden = true; rightPlayerImage.hidden = true;
        } else {
            //Still Alive
            hudLabel.text = "Player \(game.players[defender].name) Lived"
        }
        
    }
    
    func swapButtonHiddenState (button: UIButton) {
        if button.hidden == true {
            button.hidden = false
        } else {
            button.hidden = true
        }
    }
    
    func swapButtonHiddenStateWithTimer (timer: NSTimer) {
        
        let button = timer.userInfo! as! UIButton
        
        if button.hidden == true {
            button.hidden = false
        } else {
            button.hidden = true
        }
    }


}

