//
//  pickSpot.swift
//  WordCollage
//
//  Created by Sreya Guha on 3/11/16.
//  Copyright © 2016 Your School. All rights reserved.
//

import Foundation

class TicTacToeModel {

    private var cell = [1,2,3,4,5,6,7,8,9]
    
    
    func pickSpot (cellnumber: Int) -> Bool {
        if cell.contains(cellnumber) {
            cell.removeAtIndex(cell.indexOf(cellnumber)!)
            print (cell)
            return true
        } else {
            return false
        }
        
    }

    func computerTurn () -> Int {
        while (true) {
            let possibleRandom = Int(arc4random_uniform(UInt32(cell.count)))
            if pickSpot(possibleRandom) == true {
                let computerCell = possibleRandom
                return computerCell
                
        }
            
        }
    
    }


}

