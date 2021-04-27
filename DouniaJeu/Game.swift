//
//  game.swift
//  DouniaJeu
//
//  Created by dounia on 16/03/2021.
//

import Foundation

class Game  {
    private var players: [Player] = []
    private var turn: Int = 0
    
    func start()  {
        createplayers()
        battle()
        statistics()
    }
    
    private func createplayers()  {
        for i in 0..<2 {
            print("player n°\(i+1)")
            print("create your team")
            let player = Player(name: "player \(i+1)")
            players.append(player)
        }
        
    }
    
    /// fonction combat
    private func battle()  {
        while true {
            turn += 1
            for i in 0..<2 {
                print("choose your attacker")
                players[i].description()
                
                let ally = players[i].characters[userChoice()-1]
                Chest.open(target: ally)
                print("Choose your action heal or attack")
                print("1 = heal 2 = attack")
                var choice = 0
                
                repeat {
                    if let data = readLine() {
                        if let dataToInt = Int(data) {
                            choice = dataToInt
                        }
                    }
                } while choice != 1 && choice != 2
                if choice == 1 {
                    print("choose your ally")
                    players[i].description()
                    
                    let hurtAlly = players[i].characters[userChoice()-1]
                    ally.heal(target: hurtAlly)
                } else {
                    print("choose your adversary")
                    var adversaryIndex = 0
                    if i == 0 {
                        adversaryIndex = 1
                    }else {
                        adversaryIndex = 0
                    }
                    players[adversaryIndex].description()
                    
                    let adversary = players[adversaryIndex].characters[userChoice()-1]
                    
                    ally.attack(target: adversary)
                    if players[adversaryIndex].isDead() {
                        return
                    }
                    
                }
                
            }
        }
        
        
    }
    
    private func  statistics()  {
        print("game is over on \(turn) turns")
        for (index, player) in players.enumerated() {
            if !player.isDead() {
                print("player number \(index+1) wins")
                player.description()
            }
            
            
        }
        
    }
    private func userChoice () -> Int {
        var userChoice = 0
        repeat {
            if let data = readLine() {
                if let dataToInt = Int(data) {
                    userChoice = dataToInt
                }
            }
        } while userChoice != 1 && userChoice != 2 && userChoice != 3
        return userChoice
        
    }
    
    
}
