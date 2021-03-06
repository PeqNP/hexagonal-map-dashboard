//
//  SKTileMapNode+Extensions.swift
//
//  Created by MARK BROWNSWORD on 20/8/16.
//  Copyright © 2016 MARK BROWNSWORD. All rights reserved.
//

import SpriteKit

extension SKTileMapNode {
    func getUserData(forKey key: String, location: CGPoint) -> Any? {
        let column = self.tileColumnIndex(fromPosition: location)
        let row = self.tileRowIndex(fromPosition: location)

        return getUserData(forKey: key, column: column, row: row)
    }
    
    func getUserData(forKey key: String, column: Int, row: Int) -> Any? {
        let tile = self.tileDefinition(atColumn: column, row: row)
        
        return tile?.userData?.value(forKey: key)
    }
    
    func atSameMapTile(_ location1: CGPoint, and location2: CGPoint) -> Bool {
        let location1Column = self.tileColumnIndex(fromPosition: location1)
        let location1Row = self.tileRowIndex(fromPosition: location1)
        
        let location2Column = self.tileColumnIndex(fromPosition: location2)
        let location2Row = self.tileRowIndex(fromPosition: location2)
        
        return location1Column == location2Column && location1Row == location2Row
    }

    func exists(at targetLocation: CGPoint) -> Bool {
        let column = self.tileColumnIndex(fromPosition: targetLocation)
        let row = self.tileRowIndex(fromPosition: targetLocation)

        return self.tileDefinition(atColumn: column, row: row) != nil
    }
}
