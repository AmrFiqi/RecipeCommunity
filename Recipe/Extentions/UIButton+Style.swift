//
//  UIBotton+Style.swift
//  Recipe
//
//  Created by Amr El-Fiqi on 24/05/2023.
//

import UIKit

// MARK: - Button Style

extension UIButton {
    enum ButtonStyle {
        case primary
        
        var buttonColor: UIColor{
            switch self {
            case .primary:
                return ButtonsColor.defaultGreen
            }
        }
    }
}

// MARK: - Apply Button Style

extension UIButton {
    func applyButtonStyle(_ style: ButtonStyle) {
        backgroundColor = style.buttonColor
        tintColor = .white
        
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .callout, compatibleWith: .none)
        layer.cornerRadius = Constants.defaultCornerRadius
        layer.masksToBounds = true
        
        let heightConstrants = heightAnchor.constraint(equalToConstant: Constants.defaultHeight)
        heightConstrants.priority = .defaultHigh
        heightConstrants.isActive = true
    }
}

// MARK: - Constants

private extension UIButton {
    enum Constants {
        static let defaultCornerRadius: CGFloat = 10.0
        static let defaultHeight: CGFloat = 4.0
    }
}

private enum ButtonsColor {
    static let defaultGreen = UIColor(red: 0.07, green: 0.58, blue: 0.46, alpha: 1.00)
}

