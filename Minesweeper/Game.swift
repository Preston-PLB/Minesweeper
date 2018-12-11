//
//  Game.swift
//  Minesweeper
//
//  Created by Le, Brandon M on 12/11/18.
//  Copyright © 2018 Baxter, Preston L. All rights reserved.
//

import Foundation

class Game
{
    static var grid = Grid()
    
    //Will create grids with different game settings
//    init(settings:Settings)
//    {
//
//    }
    
    func startGame()
    {
        Game.grid.fillBoard()
    }
    
    //TODO replace with button press logic
//    @IBAction func tilePressed()
//    {
//        if(!gameStarted)
//        {
//            startGame()
//        }
        //do button stuff
//    }
}
