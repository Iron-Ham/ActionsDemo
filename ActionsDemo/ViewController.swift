//
//  ViewController.swift
//  ActionsDemo
//
//  Created by Hesham Salman on 1/26/20.
//  Copyright © 2020 heshamsalman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var actionButton: UIButton!
    @IBOutlet private weak var emojiLabel: UILabel!
    @IBOutlet private weak var scoreLabel: UILabel!
    @IBOutlet private weak var resetButton: UIButton!

    private var gameState = GameState(score: 0)

    override func viewDidLoad() {
        super.viewDidLoad()

        scoreLabel.font = .preferredFont(forTextStyle: .headline)
        emojiLabel.font = .preferredFont(forTextStyle: .title1)

        updateLabelsForScoreChange()
    }

    private func updateLabelsForScoreChange() {
        scoreLabel.text = gameState.score
        emojiLabel.text = gameState.emoji
        actionButton.setTitleColor(gameState.color, for: .normal)
    }

    // MARK: - IBActions

    @IBAction private func onButtonPressed(_ sender: UIButton) {
        gameState.increment()
        updateLabelsForScoreChange()
    }

    @IBAction private func onReset(_ sender: Any) {
        gameState.reset()
        updateLabelsForScoreChange()
    }

}
