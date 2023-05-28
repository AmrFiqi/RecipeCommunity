//
//  StartScreenViewController.swift
//  Recipe
//
//  Created by Amr El-Fiqi on 24/05/2023.
//

import UIKit

class StartScreenViewController: UIViewController {
    
    
    
    // MARK: - Class Methods

    override func viewDidLoad() {
        super.viewDidLoad()

        setupBackground()
        setupTopUIComponents()
        setupBottomUIComponents()
    }
 
    private func setupBackground() {
        let backgroundImage = UIImage(named: "startingScreen")
        let backgroundImageView = UIImageView(image: backgroundImage)
        backgroundImageView.frame = view.bounds
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview((backgroundImageView))
        view.sendSubviewToBack(backgroundImageView)
    }
    
    private func setupTopUIComponents() {
        let chefIcon = UIImage(named: "chefHat")
        let imageView = UIImageView(image: chefIcon)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        
        let topLabel = UILabel()
        topLabel.text = "100K+ Premium Recipe"
        topLabel.textAlignment = .center
        topLabel.textColor = .white
        topLabel.font = UIFont.systemFont(ofSize: topLabel.font.pointSize, weight: .semibold)
        topLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(topLabel)
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 79),
            imageView.widthAnchor.constraint(equalToConstant: 79),
            
            topLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
    }
    
    private func setupBottomUIComponents() {
        let startCookingButton = UIButton(type: .system)
        startCookingButton.setTitle("Start Cooking ->", for: .normal)
        startCookingButton.applyButtonStyle(.primary)
        startCookingButton.translatesAutoresizingMaskIntoConstraints = false
        startCookingButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(startCookingButton)
        
        let bottomLabel = UILabel()
        bottomLabel.text = "Simple Way to find Tasty Recipe"
        bottomLabel.textAlignment = .center
        bottomLabel.textColor = .white
        bottomLabel.font = UIFont.systemFont(ofSize: bottomLabel.font.pointSize, weight: .semibold)
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bottomLabel)
        
        let mainLabel = UILabel()
        mainLabel.text = "Get Cooking"
        mainLabel.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        mainLabel.textAlignment = .center
        mainLabel.textColor = .white
        mainLabel.numberOfLines = 0
        mainLabel.adjustsFontSizeToFitWidth = true
        mainLabel.minimumScaleFactor = 0.5
        mainLabel.font = UIFont.systemFont(ofSize: 50, weight: .bold)
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(mainLabel)
        
        
        NSLayoutConstraint.activate([
            startCookingButton.topAnchor.constraint(equalTo: view.bottomAnchor, constant: -150),
            startCookingButton.widthAnchor.constraint(equalToConstant: 234),
            startCookingButton.heightAnchor.constraint(equalToConstant: 54),
            startCookingButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            bottomLabel.topAnchor.constraint(equalTo: startCookingButton.topAnchor, constant: -64),
            bottomLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            mainLabel.bottomAnchor.constraint(equalTo: bottomLabel.topAnchor, constant: -20),
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainLabel.widthAnchor.constraint(equalToConstant: 213),
            mainLabel.heightAnchor.constraint(equalToConstant: 120),
        ])
    }
    
    @objc private func buttonTapped() {
        let nextVC = SignInViewController()
        navigationController?.pushViewController(nextVC, animated: true)
    }
}
