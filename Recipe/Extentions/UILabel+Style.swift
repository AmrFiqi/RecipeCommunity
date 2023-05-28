//
//  UILabel+Style.swift
//  Recipe
//
//  Created by Amr El-Fiqi on 24/05/2023.
//

import UIKit

extension UILabel {
    enum Style {
        case defaultScreensTitle
    }
    
}

// MARK: - Apply Style

private extension UILabel {
    func applyDefaultScreensTitle() {
        textColor = LabelColors.defaultTitleColor
        font = LabelFonts.defaultTitleFont
        textAlignment = .center
        numberOfLines = 0
        backgroundColor = .white
    }
}

private enum LabelColors {
    static let defaultTitleColor = UIColor(red: 0.09, green: 0.09, blue: 0.09, alpha: 1.00)
}

private enum LabelFonts {
    static let defaultTitleFont = UIFont(name: "Poppins-SemiBold", size: 18)
}
