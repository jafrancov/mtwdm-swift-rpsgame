//
//  ResultsViewController.swift
//  P03-RPSGameApp
//
//  Created by Alejandro Franco on 08/02/20.
//  Copyright © 2020 Alejandro Franco. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var rpsSelected: Int!
    // 1 Rock, 2 Paper, 3 Scissors

    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var resultExplained: UILabel!
    @IBOutlet weak var imageResult: UIImageView!
    @IBOutlet weak var imageWinLose: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let robot = Int.random(in: 1...3)
        if self.rpsSelected == robot {
            self.result.text = "DRAW"
            self.imageWinLose.image = UIImage(systemName: "cube.fill")
            self.imageWinLose.tintColor = UIColor.gray
            self.resultExplained.text = "The robot and you chose the same"
        }
        if self.rpsSelected == 1 && robot == 2 {
            self.result.text = "YOU LOSE"
            self.imageWinLose.image = UIImage(systemName: "xmark.circle.fill")
            self.imageWinLose.tintColor = UIColor.red
            self.resultExplained.text = "The computer choice was PAPER and yours was ROCK"
            self.imageResult.image = UIImage(named: "PaperCoversRock")
        }
        if self.rpsSelected == 1 && robot == 3 {
            self.result.text = "YOU WIN"
            self.imageWinLose.image = UIImage(systemName: "checkmark.circle.fill")
            self.imageWinLose.tintColor = UIColor.green
            self.resultExplained.text = "The computer choice was SCISSORS and yours was ROCK"
            self.imageResult.image = UIImage(named: "RockCrushesScissors")
        }
        if self.rpsSelected == 2 && robot == 1 {
            self.result.text = "YOU WIN"
            self.imageWinLose.image = UIImage(systemName: "checkmark.circle.fill")
            self.imageWinLose.tintColor = UIColor.green
            self.resultExplained.text = "The computer choice was ROCK and yours was PAPER"
            self.imageResult.image = UIImage(named: "PaperCoversRock")
        }
        if self.rpsSelected == 2 && robot == 3 {
            self.result.text = "YOU LOSE"
            self.imageWinLose.image = UIImage(systemName: "xmark.circle.fill")
            self.imageWinLose.tintColor = UIColor.red
            self.resultExplained.text = "The computer choice was SCISSORS and yours was PAPER"
            self.imageResult.image = UIImage(named: "ScissorsCutPaper")
        }
        if self.rpsSelected == 3 && robot == 1 {
            self.result.text = "YOU LOSE"
            self.imageWinLose.image = UIImage(systemName: "xmark.circle.fill")
            self.imageWinLose.tintColor = UIColor.red
            self.resultExplained.text = "The computer choice was ROCK and yours was SCISSORS"
            self.imageResult.image = UIImage(named: "RockCrushesScissors")
        }
        if self.rpsSelected == 3 && robot == 2 {
            self.result.text = "YOU WIN"
            self.imageWinLose.image = UIImage(systemName: "checkmark.circle.fill")
            self.imageWinLose.tintColor = UIColor.green
            self.resultExplained.text = "The computer choice was PAPER and yours was SCISSORS"
            self.imageResult.image = UIImage(named: "ScissorsCutPaper")
        }
    }
    
    @IBAction func returnOptions(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
