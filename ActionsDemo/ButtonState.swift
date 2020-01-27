//
//  ButtonState.swift
//  ActionsDemo
//
//  Created by Hesham Salman on 1/26/20.
//  Copyright © 2020 heshamsalman. All rights reserved.
//

import class UIKit.UIColor

enum ButtonState: String {
    case 😄, 😀, 🙂, 🙃, 😕, 🙁, 😟, 😣, 😖, 😫, 😩, 🥺, 😢, 😭

    var color: UIColor {
        switch self {
        case .😀, .😄, .🙂:
            return .green
        case .🙁, .🙃, .😕, .😟:
            return .yellow
        case .🥺, .😢, .😭, .😣, .😖, .😫, .😩:
            return .red
        }
    }
}

extension ButtonState {
    init(numberOfPresses score: Int) {
        switch score {
        case Int.min..<5:
            self = .😄
        case 5..<10:
            self = .😀
        case 10..<15:
            self = .🙂
        case 15..<20:
            self = .🙃
        case 20..<25:
            self = .😕
        case 25..<30:
            self = .🙁
        case 30..<35:
            self = .😣
        case 35..<40:
            self = .😖
        case 40..<45:
            self = .😫
        case 45..<50:
            self = .😩
        case 50..<55:
            self = .🥺
        case 55..<60:
            self = .😢
        case 60...Int.max:
            self = .😭
        default:
            fatalError()
        }
    }
}
