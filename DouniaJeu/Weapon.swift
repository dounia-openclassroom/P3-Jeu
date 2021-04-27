//
//  weapon.swift
//  DouniaJeu
//
//  Created by dounia on 16/03/2021.
//

import Foundation

class Weapon {
    let damages: Int
    let powers: Int
    
    init(damages: Int, powers: Int) {
        self.damages = damages
        self.powers = powers
    }
    
}


class Sword: Weapon {
    
    init() {
        super.init(damages: 10, powers: 0)
    }
}

class Axe: Weapon {
    init() {
        super.init(damages: 5, powers: 0)
    }
}

class Wand: Weapon {
    init() {
        super.init(damages: 5, powers: 10)
    }
}
class SuperWeapon: Weapon {
    init() {
        super.init(damages: 25, powers: 25)
    }
}

