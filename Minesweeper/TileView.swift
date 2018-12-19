//
//  TileView.swift
//  Minesweeper
//
//  Created by Baxter, Preston L on 12/19/18.
//  Copyright © 2018 Baxter, Preston L. All rights reserved.
//

import Foundation
import UIKit

class TileView: UIView{
    
    var tile: Tile?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}