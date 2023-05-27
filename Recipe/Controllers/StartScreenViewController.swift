//
//  StartScreenViewController.swift
//  Recipe
//
//  Created by Amr El-Fiqi on 24/05/2023.
//

import UIKit

class StartScreenViewController: UIViewController {
    
    // MARK: - UI Components
    
    private let backgroundImage = UIImage(named: "startingScreen")
    
    private let chefIcon = UIImage(named: "chefHat")
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupBackground()
    }
 
    private func setupBackground() {
        let backgroundImageView = UIImageView(image: backgroundImage)
        backgroundImageView.frame = view.bounds
        backgroundImageView.contentMode = .scaleAspectFill
        view.addSubview((backgroundImageView))
        view.sendSubviewToBack(backgroundImageView)
    }
}
