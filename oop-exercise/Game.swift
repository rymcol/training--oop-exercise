//
//  Game.swift
//  oop-exercise
//
//  Created by Ryan Collins on 2016-03-10.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import Foundation

class Game {
    
    var players = [Character]()
    let player1 = Character(name: "Player 1", health: 100, attackPower: 20)
    let player2 = Character(name: "Player 2", health: 80, attackPower: 20)
    
    init() {
        players.append(player1)
        players.append(player2)
    }
    
    func performAttackAndCheckForDeath (attacker: Character, defender: Character) -> Bool {
        defender._health -= attacker._attackPower
        
        if !defender.isAlive {
            return true
        } else {
            return false
        }
    }
    
}