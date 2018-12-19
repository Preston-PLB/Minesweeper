//
//  Game.swift
//  Minesweeper
//
//  Created by Le, Brandon M on 12/11/18.
//  Copyright © 2018 Baxter, Preston L. All rights reserved.
//

import Foundation
import UIKit

class Game
{
    static var grid = Grid()
    var gameStarted = false
    
    @IBOutlet var restartButton: UIButton?
    
    //Will create grids with different game settings
//    init(settings:Settings)
//    {
//
//    }
    
    //Called after first tile is tapped
    func startGame()
    {
        Game.grid.fillBoard()
        gameStarted = true
    }
    
    //Called after restart button is tapped
    func restart()
    {
        Game.grid = Grid()
        gameStarted = false
        startGame()
    }
    
    //PSEUDO CODE, Implement when storyboard stuff is ready
    
    func checkTile(tile: Tile)
    {
        if(tile.type == Tile.T.mine){
            //timer.stop
            restartButton?.isHidden = false
        }else if(tile.type == Tile.T.clue){
            //reveal clue
        }else{
            //reveal 0 clues
        }
//        take the type of tile from button
//        if mine, lose the game, make restart button appear
//        if clue, reveal the clue
//        if blank, revealBlanks(tile)
    }

//    TODO replace with button press logic
//        @IBAction func tilePressed(_ sender: UIButton)
//    {
//        if(!gameStarted)
//        {
//            startGame()
//        }
//        button stuff pseudo code
//        checkTile(sender)
//
//        if flag option, flag the button, decrease number of mines remaining
//        if no remaining mines, win the game, bring up restart button
//    }
//
//    TODO Connect to storyboard
//    @IBAction func restartButton()
//    {
//        restart()
//    }
//
//    TODO add func to reveal surrounding blank tiles if blank if tapped
//    func revealBlanks(tile:Tile)
//    {
//            Take the tile tapped
//            get all the surrounding tiles
//            for each blank or clue surrounding tile, reveal it
//            if(tile is revealed or a mine)
//            {
//                return
//            }
//            else if(tile is blank or a clue)
//            {
//                reveal this tile
//               for(each tile in surrounding tiles)
//                {
//                    revealBlanks(tile)
//                }
//            }
//    }
    
    
}
