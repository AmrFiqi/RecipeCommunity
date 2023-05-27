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
        setupUiComponent()
    }
 
    private func setupBackground() {
        let backgroundImage = UIImage(named: "startingScreen")
        let backgroundImageView = UIImageView(image: backgroundImage)
        backgroundImageView.frame = view.bounds
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview((backgroundImageView))
        view.sendSubviewToBack(backgroundImageView)
    }
    
    private func setupUiComponent() {
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
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 104),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 79),
            imageView.widthAnchor.constraint(equalToConstant: 79),
            
            topLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 20),
            topLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
        ])
        
    }
}
