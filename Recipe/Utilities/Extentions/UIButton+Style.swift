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
        titleLabel?.textAlignment = .center
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .callout, compatibleWith: .none)
        layer.cornerRadius = Constants.defaultCornerRadius
        layer.masksToBounds = true
        
        let heightConstrants = heightAnchor.constraint(equalToConstant: Constants.defaultHeight)
        heightConstrants.priority = .defaultHigh
        heightConstrants.isActive = true
    }
    
    static func createSignInButton(image: UIImage?, backgroundColor: UIColor) -> UIButton {
        let button = UIButton(type: .custom)
        button.backgroundColor = backgroundColor
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        
        // Shadows
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.2
        button.layer.shadowOffset = CGSize(width: 0, height: 2)
        button.layer.masksToBounds = false
        button.layer.shadowRadius = 4
        
        if let image = image {
            let imageView = UIImageView(image: image)
            imageView.contentMode = .scaleAspectFit
            button.addSubview(imageView)
            
            imageView.translatesAutoresizingMaskIntoConstraints = false
            NSLayoutConstraint.activate([
                imageView.centerXAnchor.constraint(equalTo: button.centerXAnchor),
                imageView.centerYAnchor.constraint(equalTo: button.centerYAnchor),
                
            ])
        }
        
        return button
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

