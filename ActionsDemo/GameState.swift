//
//  GameState.swift
//  ActionsDemo
//
//  Created by Hesham Salman on 1/26/20.
//  Copyright © 2020 heshamsalman. All rights reserved.
//

import class UIKit.UIColor

struct GameState {
    private var rawScore: Int
    var color: UIColor { buttonState.color }
    var emoji: String { buttonState.rawValue }
    var score: String { "Score: \(rawScore)"}

    private var buttonState: ButtonState { .init(numberOfPresses: rawScore) }

    init(score: Int) {
        self.rawScore = score
    }

    mutating func increment() {
        rawScore += 1
    }

    mutating func reset() {
        rawScore = 0
    }
}
