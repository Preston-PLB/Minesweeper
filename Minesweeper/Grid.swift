//
//  Grid.swift
//  Minesweeper
//
//  Created by Le, Brandon M on 12/7/18.
//  Copyright © 2018 Baxter, Preston L. All rights reserved.
//

import Foundation

struct Grid
{
    var grid = [[Tile]]()
    
    init()
    {
        for r in 0...5
        {
            grid.append([Tile]())
            for c in 0...5
            {
                let tile: Tile = Tile(x: r, y: c)
                grid[r].append(tile)
            }
        }
    }
    
    init(size: Int)
    {
        
    }
    
    func tileAt(_ x:Int, _ y:Int) -> Tile?
    {
        if(x >= 0 && x < grid.count
            && y >= 0 && y < grid.count)
        {
            return grid[x][y]
        }
        return nil
    }
    
    func nearbyTilesAt(_ x:Int, _ y:Int) -> [Tile]
    {
        //Uncomment when have an initialized grid object
        var surroundingTiles = [Tile]()
        let tL: Tile? = self.tileAt(x - 1,y + 1)
        let t: Tile? = self.tileAt(x,y + 1)
        let tR: Tile? = self.tileAt(x + 1,y + 1)
        let mL: Tile? = self.tileAt(x - 1,y)
        let mR: Tile? = self.tileAt(x + 1,y)
        let bL: Tile? = self.tileAt(x + 1,y - 1)
        let b: Tile? = self.tileAt(x,y - 1)
        let bR: Tile? = self.tileAt(x + 1,y - 1)
        let list: [Tile?] = [tL, t, tR, mL, mR, bL, b, bR]
        for tile in list
        {
            if(tile != nil)
            {
                surroundingTiles.append(tile!)
            }
        }
        return surroundingTiles
    }

    
    //Called after first tile is clicked
    mutating func fillBoard()
    {
        fillMines()
        fillClues()
    }
    
    mutating func fillClues()
    {
        var r = 0
        while(r < grid.count)
        {
            var c = 0
            while(c < grid[r].count)
            {
                grid[r][c].surroundingTiles = nearbyTilesAt(r, c)
                grid[r][c].makeClue()
                c += 1
            }
            r += 1
        }
    }
    
    mutating func fillMines()
    {
        var minesLeft = 8
        while(minesLeft > 0)
        {
            var r = 0
            while(r < grid.count)
            {
                var c = 0
                while(c < grid[r].count)
                {
                    if(grid[r][c].type != .mine)
                    {
                        if(Int.random(in: 0...10) == 0)
                        {
                            grid[r][c].setAsMine()
                            grid[r][c].x = r
                            grid[r][c].y = c
                            minesLeft -= 1
                            if(minesLeft <= 0)
                            {
                                return
                            }
                        }
                    }
                    c += 1
                }
                r+=1
            }
        }
    }
}
