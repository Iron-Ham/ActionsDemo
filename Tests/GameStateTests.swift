//
//  Tests.swift
//  Tests
//
//  Created by Hesham Salman on 1/26/20.
//  Copyright © 2020 heshamsalman. All rights reserved.
//

import XCTest

@testable import ActionsDemo
class GameStateTests: XCTestCase {

    func test_scoreBounds() {
        let min = GameState(score: Int.min)
        assertBounds(
            gameState: min,
            expectedScore: "Score: \(Int.min)",
            expectedColor: .green,
            expectedEmoji: "😄")

        let base = GameState(score: 0)
        assertBounds(
            gameState: base,
            expectedScore: "Score: 0",
            expectedColor: .green,
            expectedEmoji: "😄")

        let max = GameState(score: Int.max)
        assertBounds(
            gameState: max,
            expectedScore: "Score: \(Int.max)",
            expectedColor: .red,
            expectedEmoji: "😭")
    }

    private func assertBounds(
        gameState: GameState,
        expectedScore: String,
        expectedColor: UIColor,
        expectedEmoji: String) {
        XCTAssertEqual(expectedScore, gameState.score)
        XCTAssertEqual(expectedColor, gameState.color)
        XCTAssertEqual(expectedEmoji, gameState.emoji)
    }
}
