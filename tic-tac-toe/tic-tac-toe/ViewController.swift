//
//  ViewController.swift
//  tic-tac-toe
//
//  Created by Ryan Walker on 9/22/15.
//  Copyright © 2015 Ryan Walker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button1: UIButton!
    
    var activePlayer = 1
    
    var gameIsActive = true
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    var winningCombinations = [[0,1,2],[3,4,5],[6,7,8],[1,4,7],[2,5,8],[0,3,6],[0,4,8],[2,4,6]]
    
    @IBOutlet var winnerLabel: UILabel!
    @IBOutlet var playAgainLabel: UIButton!
    
    @IBAction func click(sender: AnyObject) {
        if gameIsActive && gameState[sender.tag] == 0 {
            var image = UIImage()
            if activePlayer == 1 {
                image = UIImage(named: "x.png")!
                gameState[sender.tag] = activePlayer
                checkForWin(activePlayer)
                activePlayer = 2
            } else {
                image = UIImage(named: "o.png")!
                gameState[sender.tag] = activePlayer
                checkForWin(activePlayer)
                activePlayer = 1
            }
            sender.setImage(image, forState: .Normal)
            print(sender.tag)
        }
    }
    
    func checkForCatGame() -> Bool {
        for boardSquare in gameState {
            if boardSquare == 0 {
                return false
            }
        }
        return true
    }
    
    func checkForWin(forPlayer: Int) {
        for combination in winningCombinations {
            if gameState[combination[0]] == forPlayer && gameState[combination[1]] == forPlayer && gameState[combination[2]] == forPlayer {
                print("Player \(forPlayer) WON!")
                gameIsActive = false
                let winner = activePlayer == 1 ? "X's" : "O's"
                winnerLabel.text = "\(winner) WIN!"
                winnerLabel.hidden = false
                playAgainLabel.hidden = false

                UIView.animateWithDuration(0.5, animations: { () -> Void in
                    self.winnerLabel.center = CGPointMake(self.winnerLabel.center.x - 400, self.winnerLabel.center.y)
                    self.playAgainLabel.center = CGPointMake(self.playAgainLabel.center.x - 400, self.playAgainLabel.center.y)
                })
                return
            
            }

        }
        if checkForCatGame() {
            print(gameState)
            gameIsActive = false
            winnerLabel.text = "Cat Game :/"
            winnerLabel.hidden = false
            playAgainLabel.hidden = false
            
            UIView.animateWithDuration(0.5, animations: { () -> Void in
                self.winnerLabel.center = CGPointMake(self.winnerLabel.center.x - 400, self.winnerLabel.center.y)
                self.playAgainLabel.center = CGPointMake(self.playAgainLabel.center.x - 400, self.playAgainLabel.center.y)
            })
        }
    }

    @IBAction func reset(sender: AnyObject) {
        var button : UIButton
        for var i = 0; i < 9; i++ {
            button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, forState: .Normal)
        }
        gameState = [0,0,0,0,0,0,0,0,0]
        activePlayer = 1
        
        winnerLabel.center = CGPointMake(winnerLabel.center.x + 400, winnerLabel.center.y)
        playAgainLabel.center = CGPointMake(playAgainLabel.center.x + 400, playAgainLabel.center.y)
        
        gameIsActive = true
        winnerLabel.hidden = true
        playAgainLabel.hidden = true
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winnerLabel.center = CGPointMake(winnerLabel.center.x + 400, winnerLabel.center.y)
        playAgainLabel.center = CGPointMake(playAgainLabel.center.x + 400, winnerLabel.center.y)
        winnerLabel.hidden = true
        playAgainLabel.hidden = true

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
      
    }


}

