//
//  SignInViewController.swift
//  Recipe
//
//  Created by Amr El-Fiqi on 28/05/2023.
//

import UIKit

class SignInViewController: UIViewController {
    
    
    // MARK: - Class Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScreen()
        setupTopTextLabel()
        setupEmailTextField()
    }
    
    private func setupScreen() {
        view.backgroundColor = .white
        navigationItem.hidesBackButton = true
    }
    
    private func setupTopTextLabel() {
        let helloLabel = UILabel()
        helloLabel.text = "Hello,"
        helloLabel.font = UIFont.systemFont(ofSize: 30, weight: .semibold)
        helloLabel.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        helloLabel.translatesAutoresizingMaskIntoConstraints = false
        helloLabel.textColor = .black
        view.addSubview(helloLabel)
        
        let welcomeLabel = UILabel()
        welcomeLabel.text = "Welcome Back!"
        welcomeLabel.font = UIFont.systemFont(ofSize: 30, weight: .regular)
        welcomeLabel.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        welcomeLabel.textColor = .black
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(welcomeLabel)
        
        NSLayoutConstraint.activate([
            helloLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 94),
            helloLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 139),
            welcomeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        ])
    }
    
    private func setupEmailTextField() {
        let emailField = UITextField()
        emailField.applyDefaultStyle()
        emailField.placeholder = "Email"
        emailField.textColor = .black
        view.addSubview(emailField)
        
        let emailLabel = UILabel()
        emailLabel.applytextFieldLabelStyle()
        emailLabel.text = "Email"
        view.addSubview(emailLabel)
        
        NSLayoutConstraint.activate([
            emailField.topAnchor.constraint(equalTo: view.topAnchor, constant: 252),
            emailField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            emailLabel.bottomAnchor.constraint(equalTo: emailField.topAnchor, constant: -10),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        ])
    }
    
}
