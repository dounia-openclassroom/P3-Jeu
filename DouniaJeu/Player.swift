//
//  player.swift
//  DouniaJeu
//
//  Created by dounia on 16/03/2021.
//

import Foundation

class Player {
    var characters: [Character] = []
    let name : String
    
    init(name: String) {
        self.name = name
        createcharacters()
    }
    
    /// characters creation
    private func createcharacters ()  {
        for i in 0..<3 {
            var choixUtilisateur = 0
            
            print("Choose your Character N°\(i+1)")
            print("1 - Biologist")
            print("2 - Chemist")
            print("3 - Physician")
            
            repeat {
                if let data = readLine() {
                    if let dataToInt = Int(data) {
                        choixUtilisateur = dataToInt
                    }
                }
            } while choixUtilisateur != 1 && choixUtilisateur != 2 && choixUtilisateur != 3
            
            var name = ""
            print ("")
            print("choose a name")
            repeat {
                if let data = readLine() {
                    name = data
                }
            } while name == ""
            
            switch choixUtilisateur {
                case 1:
                    let biologist = Biologist(name: name)
                    characters.append(biologist)
                case 2:
                    let chemist = Chemist(name: name)
                    characters.append(chemist)
                case 3:
                    let physician = Physician(name: name)
                    characters.append(physician)
                default: break
            }
        }
        
        
    }
    func description()  {
        
        for (index, character) in characters.enumerated() {
            print("\(index+1) - \(character.name) / points de vie : \(character.lives) / dégats : \(character.weapon.damages)")
            
            
        }
        
    }
    func isDead () -> Bool {
        for character in characters {
            if character.lives > 0 {
                return false
            }
        }
        return true
    }
}


