//
//  MainTabbarController.swift
//  WalletApp
//
//  Created by Vasif Mehdizada on 28.05.26.
//

import UIKit

final class MainTabbarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confureTabbars()
    }
    
    private func confureTabbars() {
        let homevc = HomeViewController()
        homevc.title = "Home"
        let home = UINavigationController(rootViewController: homevc)
        let transactions = UINavigationController(rootViewController: TransactionsViewController())
        let statstics = UINavigationController(rootViewController: StatisticsViewController())
        let more = UINavigationController(rootViewController: MoreViewController())
        
        home.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        transactions.tabBarItem = UITabBarItem(title: "Transactions", image: UIImage(systemName: "list.bullet"), tag: 1)
        statstics.tabBarItem = UITabBarItem(title: "Statistics", image: UIImage(systemName: "creditcard"), tag: 2)
        more.tabBarItem = UITabBarItem(title: "More", image: UIImage(systemName: "person"), tag: 3)
        
        viewControllers = [home, transactions, statstics, more]
    }
}
