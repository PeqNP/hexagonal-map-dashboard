//
//  MoveCommand.swift
//
//  Created by MARK BROWNSWORD on 18/2/17.
//  Copyright © 2017 MARK BROWNSWORD. All rights reserved.
//

import SpriteKit

class MoveCommand: CommandBase {
    init(execute: @escaping (() -> Void) = {_ in }) {
        super.init(text: "Move", execute: execute)
    }
}
