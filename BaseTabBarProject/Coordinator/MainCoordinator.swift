//
//  MainCoordinator.swift
//  BaseTabBarProject
//
//  Created by Adrià Ros on 17/6/22.
//

import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController?
    
    let tabBarController: TabBarController
    
    init(tabBarController: TabBarController) {
        self.tabBarController = tabBarController
    }
    
    func start() {
        
        let homeVC = UIViewController()
        homeVC.view.backgroundColor = UIColor.systemCyan
        let home = UINavigationController(rootViewController: homeVC)
        home.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        let favoritesVC = UIViewController()
        favoritesVC.view.backgroundColor = UIColor.systemGreen
        let favorites = UINavigationController(rootViewController: favoritesVC)
        favorites.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        let profileVC = UIViewController()
        profileVC.view.backgroundColor = UIColor.systemGray
        let profile = UINavigationController(rootViewController: profileVC)
        profile.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 2)
        
        tabBarController.viewControllers = [home, favorites, profile]
        tabBarController.modalPresentationStyle = .fullScreen
    }
}
