//
//  SignupViewController.swift
//  Recipe
//
//  Created by Amr El-Fiqi on 03/06/2023.
//

import UIKit

class SignupViewController: UIViewController {
    
    // MARK: - Properties
    
    private let checkboxButton = UIButton(type: .system)
    
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupScreen()
        setupTopLabel()
        setupSignup()
        acceptTerms()
        setupSignupButton()
        signinOptions()
        otherSigninButton()
        signinButton()
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
    
    private func acceptTerms() {
        let termsLabel = UILabel()
        
        checkboxButton.setImage(UIImage(systemName: "checkmark.square.fill"), for: .selected)
        checkboxButton.setImage(UIImage(systemName: "square"), for: .normal)
        checkboxButton.tintColor = UIColor(red: 1.00, green: 0.61, blue: 0.00, alpha: 1.00)
        checkboxButton.translatesAutoresizingMaskIntoConstraints = false
        checkboxButton.layer.cornerRadius = 5
        checkboxButton.layer.masksToBounds = true
        view.addSubview(checkboxButton)
        
        termsLabel.text = "Accept Terms & Conditions"
        termsLabel.textColor = UIColor(red: 1.00, green: 0.61, blue: 0.00, alpha: 1.00)
        termsLabel.font = UIFont.systemFont(ofSize: 11)
        termsLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(termsLabel)
        
        NSLayoutConstraint.activate([
            checkboxButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 547),
            checkboxButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            checkboxButton.widthAnchor.constraint(equalToConstant: 17),
            checkboxButton.heightAnchor.constraint(equalToConstant: 17),
            
            
            termsLabel.centerYAnchor.constraint(equalTo: checkboxButton.centerYAnchor),
            termsLabel.topAnchor.constraint(equalTo: checkboxButton.topAnchor),
            termsLabel.leadingAnchor.constraint(equalTo: checkboxButton.trailingAnchor, constant: 5),
            
        ])
        
        checkboxButton.addTarget(self, action: #selector(checkboxTapped), for: .touchUpInside)
    }
    
    private func setupSignupButton() {
        let signupButton = UIButton()
        signupButton.setTitle("Sign Up  ->", for: .normal)
        signupButton.applyButtonStyle(.primary)
        signupButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(signupButton)
        
        
        NSLayoutConstraint.activate([
            signupButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 590),
            signupButton.widthAnchor.constraint(equalToConstant: 315),
            signupButton.heightAnchor.constraint(equalToConstant: 60),
            signupButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),

        ])
        
    }
    
    private func signinOptions() {
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
            signInOptions.topAnchor.constraint(equalTo: view.topAnchor, constant: 664),
            signInOptions.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 147),

            firstLine.topAnchor.constraint(equalTo: view.topAnchor, constant: 670),
            firstLine.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 90),

            secondLine.topAnchor.constraint(equalTo: view.topAnchor, constant: 670),
            secondLine.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 235),

        ])
    }
    
    private func otherSigninButton() {
        let facebookButton = UIButton.createSignInButton(image: UIImage(named: "facebook-icon"), backgroundColor: .white)
        let googleButton = UIButton.createSignInButton(image: UIImage(named: "google-icon"), backgroundColor: .white)
        view.addSubview(facebookButton)
        view.addSubview(googleButton)
        
        NSLayoutConstraint.activate([
            facebookButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 701),
            facebookButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 200),
            facebookButton.widthAnchor.constraint(equalToConstant: 44),
            facebookButton.heightAnchor.constraint(equalToConstant: 44),
            
            googleButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 701),
            googleButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 131),
            googleButton.widthAnchor.constraint(equalToConstant: 44),
            googleButton.heightAnchor.constraint(equalToConstant: 44),
            
        ])
    }
    
    private func signinButton() {
        let signinLabel = UILabel()
        signinLabel.text = "Already a memeber? "
        signinLabel.textColor = .black
        signinLabel.translatesAutoresizingMaskIntoConstraints = false
        signinLabel.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        view.addSubview(signinLabel)
        
        let signinButton = UIButton()
        signinButton.setTitle("Sign In", for: .normal)
        signinButton.setTitleColor( UIColor(red: 1.00, green: 0.61, blue: 0.00, alpha: 1.00), for: .normal)
        signinButton.translatesAutoresizingMaskIntoConstraints = false
        signinButton.titleLabel?.font = UIFont.systemFont(ofSize: 17)
        view.addSubview(signinButton)
        
        NSLayoutConstraint.activate([
            signinLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 765),
            signinLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 80),
            
            signinButton.centerYAnchor.constraint(equalTo: signinLabel.centerYAnchor),
            signinButton.topAnchor.constraint(equalTo: signinLabel.topAnchor),
            signinButton.leadingAnchor.constraint(equalTo: signinLabel.trailingAnchor),
        ])
        
        signinButton.addTarget(self, action: #selector(signinButtonTapped), for: .touchUpInside)
    }
    // MARK: - Actions

    @objc private func checkboxTapped() {
        checkboxButton.isSelected.toggle()
        
        if checkboxButton.isSelected {
            if let url = URL(string: "https://www.websitepolicies.com/blog/sample-terms-conditions-template") {
                UIApplication.shared.open(url)
            }
        }
    }
    
    @objc private func signinButtonTapped() {
        let signInVC = SignInViewController()
        UIView.transition(with: view, duration: 2, options: .transitionCurlUp, animations: {
            self.navigationController?.pushViewController(signInVC, animated: false)
        }, completion: nil)

    }
}


