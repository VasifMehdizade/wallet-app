//
//  AppCoordinator.swift
//  WalletApp
//
//  Created by Vasif Mehdizada on 28.05.26.
//

import UIKit

class AppCoordinator: Coordinator {
    var children: [Coordinator] = []
    var router: UINavigationController
    
    init(
        router: UINavigationController
    ) {
        self.router = router
    }
    
    func start() {
        let coordinator = TabbarCoordinator(router: router)
        children.removeAll()
        coordinator.parentCoordinator = self
        children.append(coordinator)
        coordinator.children = [createHomeTab(), createTransactionsTab(), createStatisticsTab(), createMoreTab()]
        coordinator.start()
    }
    
    private func createHomeTab() -> HomeCoordinator {
        let nav = UINavigationController()
        let homeItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        nav.tabBarItem = homeItem
        
        let coordinator = HomeCoordinator(router: nav)
        coordinator.parentCoordinator = self
        return coordinator
    }
    
    private func createTransactionsTab() -> TransactionsCoordinator {
        let nav = UINavigationController()
        let homeItem = UITabBarItem(title: "Transactions", image: UIImage(systemName: "list.bullet"), tag: 1)
        nav.tabBarItem = homeItem
        
        let coordinator = TransactionsCoordinator(router: nav)
        coordinator.parentCoordinator = self
        return coordinator
    }
    
    private func createStatisticsTab() -> StatisticsCoordinator {
        let nav = UINavigationController()
        let homeItem = UITabBarItem(title: "Statistics", image: UIImage(systemName: "creditcard"), tag: 2)
        nav.tabBarItem = homeItem
        
        let coordinator = StatisticsCoordinator(router: nav)
        coordinator.parentCoordinator = self
        return coordinator
    }
    
    private func createMoreTab() -> MoreCoordinator {
        let nav = UINavigationController()
        let homeItem = UITabBarItem(title: "More", image: UIImage(systemName: "person"), tag: 3)
        nav.tabBarItem = homeItem
        
        let coordinator = MoreCoordinator(router: nav)
        coordinator.parentCoordinator = self
        return coordinator
    }
}
