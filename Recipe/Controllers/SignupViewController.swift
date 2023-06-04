//
//  SignupViewController.swift
//  Recipe
//
//  Created by Amr El-Fiqi on 03/06/2023.
//

import UIKit

class SignupViewController: UIViewController {
    
    // MARK: - Properties
    
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreen()
        setupTopLabel()
        setupSignup()
    }
    
    // MARK: - Setup
    
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
    
    private func setupSignup() {
        let nameTextField = UITextField()
        nameTextField.applyDefaultStyle(hint: "Enter Name")
        view.addSubview(nameTextField)
        
        let nameLabel = UILabel()
        nameLabel.applytextFieldLabelStyle(text: "Name")
        view.addSubview(nameLabel)
        
        let emailTextField = UITextField()
        emailTextField.applyDefaultStyle(hint: "Enter Eamil")
        view.addSubview(emailTextField)
        
        let emailLabel = UILabel()
        emailLabel.applytextFieldLabelStyle(text: "Email")
        view.addSubview(emailLabel)
        
        let passwordTextFailed = UITextField()
        passwordTextFailed.applyDefaultStyle(hint: "Enter Password")
        view.addSubview(passwordTextFailed)
        
        let passwordLabel = UILabel()
        passwordLabel.applytextFieldLabelStyle(text: "Password")
        view.addSubview(passwordLabel)
        
        let confirmTextField = UITextField()
        confirmTextField.applyDefaultStyle(hint: "Retype Password")
        view.addSubview(confirmTextField)
        
        let confirmLabel = UILabel()
        confirmLabel.applytextFieldLabelStyle(text: "Confirm Password")
        view.addSubview(confirmLabel)
        
        
        NSLayoutConstraint.activate([
            nameTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 169),
            nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            nameLabel.bottomAnchor.constraint(equalTo: nameTextField.topAnchor, constant: -5),
            nameLabel.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
            
            emailTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 46),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            emailLabel.bottomAnchor.constraint(equalTo: emailTextField.topAnchor, constant: -5),
            emailLabel.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            
            passwordTextFailed.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 46),
            passwordTextFailed.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            passwordLabel.bottomAnchor.constraint(equalTo: passwordTextFailed.topAnchor, constant: -5),
            passwordLabel.leadingAnchor.constraint(equalTo: passwordTextFailed.leadingAnchor),
            
            confirmTextField.topAnchor.constraint(equalTo: passwordTextFailed.bottomAnchor, constant: 46),
            confirmTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            confirmLabel.bottomAnchor.constraint(equalTo: confirmTextField.topAnchor, constant: -5),
            confirmLabel.leadingAnchor.constraint(equalTo: confirmTextField.leadingAnchor),
            
            
        ])
    }
    
    
}
