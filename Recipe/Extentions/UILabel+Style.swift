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

extension UILabel {
    func applyDefaultScreensTitle() {
        textColor = LabelColors.defaultTitleColor
        font = LabelFonts.defaultTitleFont
        textAlignment = .center
        numberOfLines = 0
        backgroundColor = .white
    }
    func applytextFieldLabelStyle() {
        frame = CGRect(x: 0, y: 0, width: 14, height: 14)
        textColor = .black
        translatesAutoresizingMaskIntoConstraints = false
    }
    func applyLineLabel() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor =  UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.00)
        font = UIFont.systemFont(ofSize: 11, weight: .light)
        
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: 50),
            heightAnchor.constraint(equalToConstant: 1),
        ])
    }
}

private enum LabelColors {
    static let defaultTitleColor = UIColor(red: 0.09, green: 0.09, blue: 0.09, alpha: 1.00)
}

private enum LabelFonts {
    static let defaultTitleFont = UIFont(name: "Poppins-SemiBold", size: 18)
}

