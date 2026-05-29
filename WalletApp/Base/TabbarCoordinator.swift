//
//  TabbarCoordinator.swift
//  WalletApp
//
//  Created by Vasif Mehdizada on 28.05.26.
//

import UIKit

class TabbarCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    
    private let tabBarController: MainTabbarController
    public var router: UINavigationController

    var children: [Coordinator] = []
    
    init(
        router : UINavigationController
    ) {
        self.router = router
        self.tabBarController = MainTabbarController()
    }
    
    func start() {
        tabBarController.viewControllers = children.map {$0.router as UIViewController}
        router.pushViewController(tabBarController, animated: false)
        children.forEach({$0.start()})
        parentCoordinator?.children.append(self)
    }
}
