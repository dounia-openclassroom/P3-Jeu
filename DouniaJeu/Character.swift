//
//  character.swift
//  DouniaJeu
//
//  Created by dounia on 16/03/2021.
//

import Foundation

class Character {
    let name: String
    var lives: Int
    var weapon : Weapon
    
    init(name: String, lives: Int, weapon: Weapon ) {
        self.name = name
        self.lives = lives
        self.weapon = weapon
    }
    
    
    func attack (target: Character)  {
        target.lives -= weapon.damages
    }
    
    func heal (target: Character)  {
        target.lives += weapon.powers
    }
    
}



class Biologist: Character {
    init(name:String) {
        super.init(name: name, lives: 50, weapon: Axe())
    }
}


class Physician: Character {
    init(name:String) {
        super.init(name: name, lives: 40, weapon: Sword())
    }
}

class Chemist: Character {
    init(name:String) {
        super.init(name: name, lives: 30, weapon: Wand())
    }
}
