//
//  UITextField+Style.swift
//  Recipe
//
//  Created by Amr El-Fiqi on 28/05/2023.
//

import UIKit


extension UITextField {

    func applyDefaultStyle() {
        self.frame.size = CGSize(width: 315, height: 55)
        self.layer.cornerRadius = 10
        self.backgroundColor = .white
        self.borderStyle = .roundedRect
        self.translatesAutoresizingMaskIntoConstraints = false
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(hex: 0xD9D9D9).cgColor
        
        NSLayoutConstraint.activate([
            self.widthAnchor.constraint(equalToConstant: 315),
            self.heightAnchor.constraint(equalToConstant: 55),
        ])
    }
}
