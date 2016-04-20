/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {
    
    let tictactoemodel = TicTacToeModel()


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBOutlet weak var winLabel: UILabel!
    
    @IBOutlet weak var cell1: UIButton!
    
    @IBOutlet weak var cell2: UIButton!
    
    @IBOutlet weak var cell3: UIButton!
    
    @IBOutlet weak var cell4: UIButton!
    
    @IBOutlet weak var cell5: UIButton!
    
    @IBOutlet weak var cell6: UIButton!
    
    @IBOutlet weak var cell7: UIButton!
    
    @IBOutlet weak var cell8: UIButton!
    
    @IBOutlet weak var cell9: UIButton!
    
    
    func findButton() {
       let newSpot = tictactoemodel.computerTurn()
        if (newSpot == 1) {
            cell1.setTitle ("O", forState: UIControlState.Normal)
            findWinner()
        } else if (newSpot == 2) {
            cell2.setTitle ("O", forState: UIControlState.Normal)
            findWinner()
        } else if (newSpot == 3){
            cell3.setTitle ("O", forState: UIControlState.Normal)
            findWinner()
        } else if (newSpot == 4){
            cell4.setTitle ("O", forState: UIControlState.Normal)
            findWinner()
        } else if (newSpot == 5){
            cell5.setTitle ("O", forState: UIControlState.Normal)
            findWinner()
        } else if (newSpot == 6){
            cell6.setTitle ("O", forState: UIControlState.Normal)
            findWinner()
        } else if (newSpot == 7){
            cell7.setTitle ("O", forState: UIControlState.Normal)
            findWinner()
        } else if (newSpot == 8){
            cell8.setTitle ("O", forState: UIControlState.Normal)
            findWinner()
        } else if (newSpot == 9) {
            cell9.setTitle("O", forState: UIControlState.Normal)
            findWinner()
        }
    }
    func findWinner() {
      self.winLabel.text = "Keep going! Not done yet!"
      if ((cell1.currentTitle! == cell2.currentTitle!) && (cell2.currentTitle! == cell3.currentTitle!)) {
        if (self.cell1.currentTitle! == "X") {
                self.winLabel.text = "You won! Congrats!"
                return
            }else if (self.cell1.currentTitle! == "O") {
                self.winLabel.text = "I won!"
                return
                }
        }else if ((cell4.currentTitle! == cell5.currentTitle!) && (cell5.currentTitle! == cell6.currentTitle!)) {
                if (self.cell4.currentTitle! == "X") {
                    self.winLabel.text = "You won! Congrats!"
                    return
                } else if (self.cell4.currentTitle! == "O") {
                    self.winLabel.text = "I won!"
                    return
                }
        } else if ((cell7.currentTitle! == cell8.currentTitle!) && (cell8.currentTitle! == cell9.currentTitle!)) {
                if (self.cell7.currentTitle! == "X") {
                    self.winLabel.text = "You won!"
                    return
                } else if (self.cell7.currentTitle! == "O") {
                    self.winLabel.text = "I won!"
                    return
                }
                
        } else if ((cell1.currentTitle! == cell4.currentTitle!) && (cell4.currentTitle! == cell7.currentTitle!)) {
                if (self.cell1.currentTitle! == "X") {
                    self.winLabel.text = "You won! Congrats!"
                    return
                } else if (self.cell1.currentTitle! == "O") {
                    self.winLabel.text = "I won!"
                    return
        }
        } else if ((cell2.currentTitle! == cell5.currentTitle!) && (cell5.currentTitle! == cell8.currentTitle!)) {
                if (self.cell2.currentTitle! == "X") {
                    self.winLabel.text = "You won! Congrats!"
                    return
                } else if (self.cell2.currentTitle! == "O") {
                    self.winLabel.text = "I won!"
                    return
                }
        } else if ((cell3.currentTitle! == cell6.currentTitle!) && (cell6.currentTitle! == cell9.currentTitle!)) {
                if (self.cell3.currentTitle! == "X") {
                    self.winLabel.text = "You won! Congrats!"
                    return
                } else if (self.cell3.currentTitle! == "O") {
                    self.winLabel.text = "I won!"
                    return
                    
                }
        } else if ((cell1.currentTitle! == cell5.currentTitle!) && (cell5.currentTitle! == cell9.currentTitle!)) {
                if (self.cell1.currentTitle! == "X") {
                    self.winLabel.text = "You won! Congrats!"
                    return
                } else if (self.cell1.currentTitle! == "O") {
                    self.winLabel.text = "I won!"
                    return
                }
        } else if ((cell3.currentTitle! == cell5.currentTitle!) && (cell5.currentTitle! == cell7.currentTitle!)) {
                if (self.cell3.currentTitle! == "X") {
                    self.winLabel.text = "You won! Congrats!"
                    return
                } else if (self.cell3.currentTitle! == "O") {
                    self.winLabel.text = "I won!"
                    return
                }

        }
    }

    
   
    @IBAction func cell1pressed(sender: UIButton) {
       if tictactoemodel.pickSpot(1) == true {
            cell1.setTitle("X", forState:UIControlState.Normal)
            findWinner()
            findButton()
        
    }
    }
    
    @IBAction func cell2pressed(sender: UIButton) {
        if tictactoemodel.pickSpot(2) == true {
            cell2.setTitle("X", forState: UIControlState.Normal)
            findWinner()
            findButton()
            
    }
}
     
    
    @IBAction func cell3pressed(sender: UIButton) {
        if tictactoemodel.pickSpot(3) == true {
            cell3.setTitle("X", forState: UIControlState.Normal)
            findWinner()
            findButton()

        
    }
}

    
    @IBAction func cell4pressed(sender: UIButton) {
        if tictactoemodel.pickSpot(4) == true {
            cell4.setTitle("X", forState: UIControlState.Normal)
            findWinner()
            findButton()
        }
            }
        
    
   
    
    
    @IBAction func cell5pressed(sender: UIButton) {
        if tictactoemodel.pickSpot(5) == true {
            cell5.setTitle("X", forState: UIControlState.Normal)
            findWinner()
            findButton()
    }
    }
    @IBAction func cell6pressed(sender: UIButton) {
        if tictactoemodel.pickSpot(6) == true {
            cell6.setTitle("X", forState: UIControlState.Normal)
            findWinner()
            findButton()
        }
    }
    
    @IBAction func cell7pressed(sender: UIButton) {
        if tictactoemodel.pickSpot(7) == true {
            cell7.setTitle("X", forState: UIControlState.Normal)
            findWinner()
            findButton()
                    
                }
            }

  
    
    
    @IBAction func cell8pressed(sender: UIButton) {
        if tictactoemodel.pickSpot(8) == true {
            cell8.setTitle("X", forState: UIControlState.Normal)
            findWinner()
            findButton()
        }

    }

    
    
    @IBAction func cell9pressed(sender: UIButton) {
        if tictactoemodel.pickSpot(9) == true {
            cell9.setTitle("X", forState: UIControlState.Normal)
            findWinner()
            findButton()
        }
    }
    
    
}