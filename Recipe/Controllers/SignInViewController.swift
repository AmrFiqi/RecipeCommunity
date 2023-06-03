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
        setupPasswordTextField()
        setupSignInButton()
        signInOptions()
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
        emailField.placeholder = "Enter Email"
        emailField.textColor = .black
        view.addSubview(emailField)
        
        let emailLabel = UILabel()
        emailLabel.applytextFieldLabelStyle()
        emailLabel.text = "Email"
        view.addSubview(emailLabel)
        
        NSLayoutConstraint.activate([
            emailField.topAnchor.constraint(equalTo: view.topAnchor, constant: 270),
            emailField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            emailLabel.bottomAnchor.constraint(equalTo: emailField.topAnchor, constant: -10),
            emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        ])
    }
    
    private func setupPasswordTextField() {
        let passwordField = UITextField()
        passwordField.applyDefaultStyle()
        passwordField.placeholder = "Enter Password"
        passwordField.textColor = .black
        view.addSubview(passwordField)
        
        let passwordLabel = UILabel()
        passwordLabel.applytextFieldLabelStyle()
        passwordLabel.text = "Enter Password"
        view.addSubview(passwordLabel)
        
        NSLayoutConstraint.activate([
            passwordField.topAnchor.constraint(equalTo: view.topAnchor, constant: 381),
            passwordField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            passwordLabel.bottomAnchor.constraint(equalTo: passwordField.topAnchor, constant: -10),
            passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        ])
    }
    
    private func setupSignInButton() {
        let signInButton = UIButton()
        signInButton.setTitle("Sign In  ->", for: .normal)
        signInButton.titleLabel?.textAlignment = .center
        signInButton.applyButtonStyle(.primary)
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(signInButton)
        
        let forgetLabel = UILabel()
        forgetLabel.text = "Forgot Passowrd?"
        forgetLabel.textColor = UIColor(red: 1.00, green: 0.61, blue: 0.00, alpha: 1.00)
        forgetLabel.translatesAutoresizingMaskIntoConstraints = false
        forgetLabel.font = UIFont.systemFont(ofSize: 15, weight: .light)
        view.addSubview(forgetLabel)
        
        
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 500),
            signInButton.widthAnchor.constraint(equalToConstant: 315),
            signInButton.heightAnchor.constraint(equalToConstant: 60),
            signInButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            
            forgetLabel.bottomAnchor.constraint(equalTo: signInButton.topAnchor, constant: -25),
            forgetLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
        ])
        
    }
    
    private func signInOptions() {
        let signInOptions = UILabel()
        signInOptions.text = "Or Sign in With"
        signInOptions.textColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.00)
        signInOptions.font = UIFont.systemFont(ofSize: 11, weight: .light)
        signInOptions.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(signInOptions)
        
        let firstLine = UILabel()
        firstLine.applyLineLabel()
        view.addSubview(firstLine)
        
        let secondLine = UILabel()
        secondLine.applyLineLabel()
        view.addSubview(secondLine)
        
        NSLayoutConstraint.activate([
            signInOptions.topAnchor.constraint(equalTo: view.topAnchor, constant: 580),
            signInOptions.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 147),
            
            firstLine.topAnchor.constraint(equalTo: view.topAnchor, constant: 586),
            firstLine.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 90),
            
            secondLine.topAnchor.constraint(equalTo: view.topAnchor, constant: 586),
            secondLine.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 235),
        ])
    }
    
    private func otherSigninButton() {
        let facebookButton = UIButton()
        
    }
}
