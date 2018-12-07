//
//  Tile.swift
//  Minesweeper
//
//  Created by Baxter, Preston L on 12/7/18.
//  Copyright © 2018 Baxter, Preston L. All rights reserved.
//

import Foundation

struct Tile
{
    enum T
    {
        case blank, mine, clue, flagged
    }
    
    var x: Int
    var y: Int
    var type = T.blank
    var nearbyMines = 0
    var surroundingTiles = [Tile]()
    
    //Acesses board (which is a global variable)
    //Initializes surrounding tiles array
    mutating func getNearbyTiles()
    {
//        let tL: Tile? = board.getTile(x - 1, y + 1)
//        let t: Tile? = board.getTile(x, y + 1)
//        let tR: Tile? = board.getTile(x + 1, y + 1)
//        let mL: Tile? = board.getTile(x - 1, y)
//        let mR: Tile? = board.getTile(x + 1, y)
//        let bL: Tile? = board.getTile(x + 1, y - 1)
//        let b: Tile? = board.getTile(x, y - 1)
//        let bR: Tile? = board.getTile(x + 1, y - 1)
//        var list: [Tile?] = [tL, t, tR, mL, mR, bL, b, bR]
//        for tile in list
//        {
//            if(tile != nil)
//            {
//                surroundingTiles.append(tile!)
//            }
//        }
        
    }
    
    
    //Called when the board wants to create a mine
    mutating func setAsMine()
    {
        type = .mine
    }
    
    //TODO
    //Called when board finishes placing mines
    mutating func makeClue()
    {
        type = .clue
        //Call nearby tiles
        //Loop through nearby tiles
        for tile in surroundingTiles
        {
            if(tile.type == .mine)
            {
                nearbyMines += 1
            }
        }
    }
}