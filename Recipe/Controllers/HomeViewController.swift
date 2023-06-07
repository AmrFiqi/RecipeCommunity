//
//  HomeViewController.swift
//  Recipe
//
//  Created by Amr El-Fiqi on 05/06/2023.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTitle()
    }
    
    // MARK: - Setup
    
    private func setupTitle() {
        let mainLabel =  UILabel()
        mainLabel.applyMainLabel(text: "Hello Jega")
        mainLabel.font = UIFont.systemFont(ofSize: 22,weight: .semibold)
        view.addSubview(mainLabel)
        
        let subLabel = UILabel()
        subLabel.applySubLabel(text: "What are you cooking today?")
        subLabel.font = UIFont.systemFont(ofSize: 11, weight: .regular)
        subLabel.textColor = UIColor(red: 0.66, green: 0.66, blue: 0.66, alpha: 1.00)
        view.addSubview(subLabel)
        
        let profileButton = UIButton(type: .custom)
        profileButton.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        profileButton.setImage(UIImage(named: "profile-icon"), for: .normal)
        profileButton.translatesAutoresizingMaskIntoConstraints = false
        profileButton.backgroundColor = UIColor(red: 1.00, green: 0.81, blue: 0.50, alpha: 1.00)
        profileButton.layer.cornerRadius = 10
        view.addSubview(profileButton)
        
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 64),
            mainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            mainLabel.widthAnchor.constraint(equalToConstant: 107),
            mainLabel.heightAnchor.constraint(equalToConstant: 30),
            
            subLabel.topAnchor.constraint(equalTo: mainLabel.bottomAnchor, constant: 5),
            subLabel.leadingAnchor.constraint(equalTo: mainLabel.leadingAnchor),
            subLabel.widthAnchor.constraint(equalToConstant: 195),
            
            profileButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            profileButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            profileButton.widthAnchor.constraint(equalToConstant: 40),
            profileButton.heightAnchor.constraint(equalToConstant: 40),
        ])
        
        profileButton.addTarget(self, action: #selector(profileButtonTapped), for: .touchUpInside)
    }
    
    
    // MARK: - Actions
    
    @objc private func profileButtonTapped() {
        let profileVC = ProfileViewController()
        navigationController?.pushViewController(profileVC, animated: true)
    }
    
}
