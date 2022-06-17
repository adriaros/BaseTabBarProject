//
//  TabBarController.swift
//  BaseTabBarProject
//
//  Created by Adrià Ros on 17/6/22.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.backgroundColor = .white.withAlphaComponent(0.8)
    }
}
