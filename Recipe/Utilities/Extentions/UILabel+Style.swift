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
    
    func applytextFieldLabelStyle(text: String) {
        self.text = "\(text)"
        frame = CGRect(x: 0, y: 0, width: 14, height: 14)
        font = UIFont(name: "Poppins-Regular", size: 14)
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
    
    func applyMainLabel(text: String) {
        self.text = "\(text)"
        font = LabelFonts.mainFont
        frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        translatesAutoresizingMaskIntoConstraints = false
        textColor = .black
    }
    
    func applySubLabel(text: String) {
        self.text = "\(text)"
        font = LabelFonts.subFont
        frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        textColor = .black
        translatesAutoresizingMaskIntoConstraints = false
    }
}

private enum LabelColors {
    static let defaultTitleColor = UIColor(red: 0.09, green: 0.09, blue: 0.09, alpha: 1.00)
}

private enum LabelFonts {
    static let defaultTitleFont = UIFont(name: "Poppins-SemiBold", size: 18)
    static let subFont = UIFont.systemFont(ofSize: 30, weight: .regular)
    static let mainFont = UIFont.systemFont(ofSize: 30, weight: .semibold)
}

