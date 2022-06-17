//
//  SceneDelegate.swift
//  BaseTabBarProject
//
//  Created by Adrià Ros on 16/6/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var coordinator: Coordinator
    var rootViewController: TabBarController
    
    override init() {
        rootViewController = TabBarController()
        coordinator = MainCoordinator(tabBarController: rootViewController)
    }
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = rootViewController
        window?.makeKeyAndVisible()
        coordinator.start()
    }
}
