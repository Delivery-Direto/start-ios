//
//  MainViewController.swift
//  restaurant-ios
//
//  Created by Abraao on 19/05/20.
//  Copyright © 2020 Abraao. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupViewControllers()
    }
    
    fileprivate func setupViewControllers() {
        let menuViewController = MenuViewController()
        let cartViewController = CartViewController()
        
        var menuImage: UIImage?
        var cartImage: UIImage?

        if #available(iOS 13.0, *) {
            menuImage = UIImage(systemName: "list.bullet")
            cartImage = UIImage(systemName: "cart")
        }
        
        menuViewController.tabBarItem = UITabBarItem(title: "Menu", image: menuImage, tag: 0)
        cartViewController.tabBarItem = UITabBarItem(title: "Cart", image: cartImage, tag: 0)
        
        self.viewControllers = [
            menuViewController,
            cartViewController
        ]
    }
}
