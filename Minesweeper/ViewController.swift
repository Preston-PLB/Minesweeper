//
//  ViewController.swift
//  Minesweeper
//
//  Created by Baxter, Preston L on 12/5/18.
//  Copyright © 2018 Baxter, Preston L. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    var mineCounter: Int?
    var board: [UIStackView] = []
    var screenBounds: CGRect = UIScreen.main.bounds
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let game = Game()
        game.startGame()
        makeGrid(game.grid.grid)
    }

    func makeGrid(_ grid: [[Tile]])
    {
        let rows = UIStackView()
        rows.frame = CGRect(x:0, y:0, width: screenBounds.width, height: screenBounds.height)
        rows.axis = .horizontal
        rows.distribution = UIStackView.Distribution.fillEqually
        for r in 0...grid.count - 1
        {
            let column = UIStackView()
            column.axis = .vertical
            column.distribution = UIStackView.Distribution.fillEqually
            for c in 0...grid[r].count - 1
            {
                let tile: Tile = grid[r][c]
                var name: String
                if(tile.type == .clue)
                {
                    name = String("\(tile.nearbyMines)")
                }
                else
                {
                    name = "\(tile.type)"
                }
                let button = UIButton()
                button.setTitle(name, for: .normal)
                button.setTitleColor(UIColor.black, for: .normal)
                column.addArrangedSubview(button)
            }
            rows.addArrangedSubview(column)
            board.append(column)
        }
        self.view.addSubview(rows)
        self.view.bringSubviewToFront(rows)
    }

    func onButtonPress(_ sender: UIButton!)
    {
        let tile: Tile = getTile(sender)
        print("hello")
    }
    
    func tap(_ sender: UIGestureRecognizer)
    {
        sender.view
    }
    
    //returns an invalid tile location if the tile cannot be found (this SHOULD NOT HAPPEN, which means something is wrong with the code)
    func getTile(_ button: UIButton) -> Tile {
        for r in 0...board.count {
            let view: UIStackView = board[r]
            for c in 0...view.arrangedSubviews.count {
                let obj: UIView = view.arrangedSubviews[c]
                if(obj == button) {
                    return Tile(x: r, y: c)
                }
            }
        }
        return Tile(x: -1,y: -1)
    }
    
}

