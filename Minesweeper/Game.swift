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
    //    @IBAction func tilePressed(_ sender: UIButton)
//    {
//        if(!gameStarted)
//        {
//            startGame()
//        }
        //button stuff pseudo code
        //take the type of tile from button
        //if mine, lose the game
        //if clue, reveal the clue
        //if blank, reveal all the touching blanks and clues.
        //if flag option, flag the button, decrease number of mines remaining
        //if no remaining mines, win the game
//    }
    
    //TODO add func to reveal surrounding blank tiles if blank if tapped
    //func revealBlanks(tile:Tile)
    //{
            //Take the tile tapped
            //get all the surrounding tiles
            //for each blank or clue surrounding tile, reveal it
            //if(tile is revealed)
            //{
                //return
            //}
            //else if(tile is blank)
            //{
                //reveal this tile
            //   for(each tile in surrounding tiles)
                //{
                    //if(tile is blank)
                    //{
                        //revealBlanks(tile)
                    //}
                    //else if(tile is clue)
                    //{
                        //reveal that tile
                    //}
                //}
            //}
    //}
    
    
}
