////
////  MainTabBarViewController.swift
////  Recipe
////
////  Created by Amr El-Fiqi on 24/05/2023.
////
//
//import UIKit
//
//class MainTabBarViewController: UITabBarController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        setupViewControllers()
//    }
//
//    func setupViewControllers() {
//        let vc1 = UINavigationController(rootViewController: HomeViewController())
//        let vc2 = UINavigationController(rootViewController: SavedViewController())
//        let vc3 = UINavigationController(rootViewController: NotificationViewController())
//        let vc4 = UINavigationController(rootViewController: ProfileViewController())
//
//        vc1.tabBarItem.image = UIImage(systemName: "house")
//        vc2.tabBarItem.image = UIImage(systemName: "bookmark")
//        vc3.tabBarItem.image = UIImage(systemName: "bell")
//        vc4.tabBarItem.image = UIImage(systemName: "person")
//
//        vc1.title = "Home"
//        vc2.title = "Coming Soon"
//        vc3.title = "Top Search"
//        vc4.title = "Downloads"
//
//        tabBar.tintColor = .label
//        setViewControllers([vc1, vc2, vc3, vc4], animated: true)
//    }
//}
