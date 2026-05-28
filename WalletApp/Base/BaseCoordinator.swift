//
//  BaseCoordinator.swift
//  WalletApp
//
//  Created by Vasif Mehdizada on 28.05.26.
//

import UIKit

class BaseCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(
        navigationController: UINavigationController
    ) {
        self.navigationController = navigationController
    }
    
    func start() {
        let tabbar = TabbarCoordinator(navigationController: navigationController)
        tabbar.start()
    }
}
