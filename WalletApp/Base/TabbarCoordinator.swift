//
//  TabbarCoordinator.swift
//  WalletApp
//
//  Created by Vasif Mehdizada on 28.05.26.
//

import UIKit

class TabbarCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    
    var navigationController: UINavigationController

    var children: [Coordinator] = []
    
    init(
        navigationController: UINavigationController
    ) {
        self.navigationController = navigationController
    }
    
    func start() {
        let tabbar = MainTabbarController()
        navigationController.pushViewController(tabbar, animated: false)
    }
}
