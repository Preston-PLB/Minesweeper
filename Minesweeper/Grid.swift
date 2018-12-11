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
    
    func tileAt(x:Int, y:Int) -> Tile
    {
        return grid[x][y]
    }
    
    //Called after first tile is clicked
    mutating func fillBoard()
    {
        var minesLeft = 30
        while(minesLeft > 0)
        {
            var r = 0
            while(r < grid.count)
            {
                var c = 0
                while(c < grid[r].count)
                {
                    if(Int.random(in: 0...10) == 0)
                    {
                        grid[r][c].setAsMine()
                        grid[r][c].x = r
                        grid[r][c].y = c
                        minesLeft -= 1
                    }
                    c += 1
                }
                r+=1
            }
        }
        
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
                grid[r][c].makeClue()
                c += 1
            }
            r += 1
        }
    }
}
