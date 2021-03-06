//
//  MoveDirection.swift
//  Parzlet
//
//  Created by Suat Karakusoglu on 1/1/17.
//  Copyright © 2017 Parzlet. All rights reserved.
//

import Foundation

enum MoveDirection: Int {
    case LEFT
    case RIGHT
    case UP
    case DOWN
    
    static let reverseDirectionPairs: [MoveDirection: MoveDirection] = [
        .LEFT: .RIGHT,
        .RIGHT: .LEFT,
        .UP: .DOWN,
        .DOWN: .UP
    ]
    
    static func randomDirection() -> MoveDirection
    {
        let randomDirectionIntExt = (0...4).randomInt()!
        return MoveDirection.init(rawValue: randomDirectionIntExt)!
    }
    
    func getReverseDirection() -> MoveDirection
    {
       return MoveDirection.reverseDirectionPairs[self]!
    }
}
    
