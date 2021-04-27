//
//  Chest.swift
//  DouniaJeu
//
//  Created by dounia on 20/04/2021.
//

import Foundation

class Chest  {
   /// chest opening and powers giving
    static func open(target:Character) {
        let random = Int.random(in: 1...5)
        if random == 3 {
            print("magic chest appears")
            print("\(target.name) gets superWeapon")
            target.weapon = SuperWeapon()
            
        }
    }
    
}
