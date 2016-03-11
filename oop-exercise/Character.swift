//
//  Character.swift
//  oop-exercise
//
//  Created by Ryan Collins on 2016-03-10.
//  Copyright © 2016 Ryan Collins. All rights reserved.
//

import Foundation

class Character {
    
    var name: String
    var _health: Int
    var _attackPower: Int
    
    var health: Int {
        get {
            return _health
        }
    }
    
    var attackPower: Int {
        get {
            return _attackPower
        }
    }
    
    var isAlive: Bool {
        if _health >= 0 {
            return true
        } else {
            return false
        }
    }
    
    init (name: String, health: Int, attackPower: Int) {
        self.name = name
        self._health = health
        self._attackPower = attackPower
    }
    
}