//
//  SignInViewController.swift
//  Recipe
//
//  Created by Amr El-Fiqi on 28/05/2023.
//

import UIKit

class SignInViewController: UIViewController {
    
    // MARK: - Properties
    
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreen()
        setupTopTextLabel()
        setupEmailTextField()
        setupPasswordTextField()
        setupSignInButton()
        signInOptions()
        otherSigninButton()
        signupButton()
    }
    
    
    // MARK: - Setup
    
    private func setupTopTextLabel() {
        let helloLabel = UILabel()
        helloLabel.applyMainLabel(text:"Hello,")
        view.addSubview(helloLabel)
        
        let welcomeLabel = UILabel()
        welcomeLabel.applySubLabel(text: "Welcome Back!")
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
        emailField.applyDefaultStyle(hint: "Enter Email")
        view.addSubview(emailField)
        
        let emailLabel = UILabel()
        emailLabel.applytextFieldLabelStyle(text: "Email")
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
        passwordField.applyDefaultStyle(hint: "Enter Password")
        passwordField.isSecureTextEntry = true
        view.addSubview(passwordField)
        
        let passwordLabel = UILabel()
        passwordLabel.applytextFieldLabelStyle(text: "Enter Password")
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
        signInButton.addTarget(self, action: #selector(signinButtonTapped), for: .touchUpInside)
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
        let facebookButton = UIButton.createSignInButton(image: UIImage(named: "facebook-icon"), backgroundColor: .white)
        let googleButton = UIButton.createSignInButton(image: UIImage(named: "google-icon"), backgroundColor: .white)
        view.addSubview(facebookButton)
        view.addSubview(googleButton)
        
        NSLayoutConstraint.activate([
            facebookButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 617),
            facebookButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            facebookButton.widthAnchor.constraint(equalToConstant: 44),
            facebookButton.heightAnchor.constraint(equalToConstant: 44),
            
            googleButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 617),
            googleButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 131),
            googleButton.widthAnchor.constraint(equalToConstant: 44),
            googleButton.heightAnchor.constraint(equalToConstant: 44),
            
        ])
    }
    
    private func signupButton() {
        let signupLabel = UILabel()
        signupLabel.text = "Don't have an account? "
        signupLabel.textColor = .black
        signupLabel.translatesAutoresizingMaskIntoConstraints = false
        signupLabel.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        view.addSubview(signupLabel)
        
        let signupButton = UIButton()
        signupButton.setTitle("Sign up", for: .normal)
        signupButton.setTitleColor( UIColor(red: 1.00, green: 0.61, blue: 0.00, alpha: 1.00), for: .normal)
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        signupButton.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        view.addSubview(signupButton)
        
        NSLayoutConstraint.activate([
            signupLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 710),
            signupLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),
            
            signupButton.centerYAnchor.constraint(equalTo: signupLabel.centerYAnchor),
            signupButton.topAnchor.constraint(equalTo: signupLabel.topAnchor),
            signupButton.leadingAnchor.constraint(equalTo: signupLabel.trailingAnchor),
        ])
        
        signupButton.addTarget(self, action: #selector(signupButtonTapped), for: .touchUpInside)
    }
    
    // MARK: - Actions
    
    @objc private func signupButtonTapped() {
        let nextVC = SignupViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
    
    @objc private func signinButtonTapped() {
        let mainVC = MainTabBarViewController()
        navigationController?.pushViewController(mainVC, animated: true)
    }
}
