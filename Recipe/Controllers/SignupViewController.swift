//
//  SignupViewController.swift
//  Recipe
//
//  Created by Amr El-Fiqi on 03/06/2023.
//

import UIKit

class SignupViewController: UIViewController {
    
    // MARK: - Class Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreen()
        setupTopLabel()
    }
    
    private func setupTopLabel() {
        let headerLabel = UILabel()
        headerLabel.applyMainLabel(text: "Create an account")
        headerLabel.adjustsFontSizeToFitWidth = true
        view.addSubview(headerLabel)
        
        let subLabel = UILabel()
        subLabel.applySubLabel(text: "Let's help you setup your account, it won't take long.")
        subLabel.font = UIFont.systemFont(ofSize: 12, weight: .light)
        subLabel.numberOfLines = 0
        view.addSubview(subLabel)
        
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 54),
            headerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            headerLabel.widthAnchor.constraint(equalToConstant: 191),
            
            subLabel.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 5),
            subLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            subLabel.widthAnchor.constraint(equalToConstant: 195)
            
        ])
    }
}
