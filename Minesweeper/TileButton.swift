//
//  TileButton.swift
//  Minesweeper
//
//  Created by Baxter, Preston L on 12/11/18.
//  Copyright © 2018 Baxter, Preston L. All rights reserved.
//

import Foundation
import UIKit

class TileButton: UIButton{

    var tile: Tile?
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        self.layer.borderWidth = 2
        self.layer.borderColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
    }
    
    func setTile(tile t: Tile){
        tile = t
    }
    
    //TODO: add click functions
    
}
