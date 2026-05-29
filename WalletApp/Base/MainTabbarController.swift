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
        let home = createHome()
        let transactions = createTransactions()
        let statistics = createStatistics()
        let more = createMore()
        
        home.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        transactions.tabBarItem = UITabBarItem(title: "Transactions", image: UIImage(systemName: "list.bullet"), tag: 1)
        statistics.tabBarItem = UITabBarItem(title: "Statistics", image: UIImage(systemName: "creditcard"), tag: 2)
        more.tabBarItem = UITabBarItem(title: "More", image: UIImage(systemName: "person"), tag: 3)
        viewControllers = [home, transactions, statistics, more]
    }
    
    private func createHome() -> UINavigationController {
        let viewModel = HomeViewModel()
        let viewFactory = HomeViewFactory()
        let homeVc = HomeViewController(viewFactory: viewFactory, viewModel: viewModel)
        homeVc.title = "Home"
        let home = UINavigationController(rootViewController: homeVc)
        return home
    }
    
    private func createTransactions() -> UINavigationController {
        let viewModel = TransactionsViewModel()
        let viewFactory = TransactionsViewFactory()
        let transactionsVc = TransactionsViewController(viewFactory: viewFactory, viewModel: viewModel)
        transactionsVc.title = "Transactions"
        let transactions = UINavigationController(rootViewController: transactionsVc)
        return transactions
    }
    
    private func createStatistics() -> UINavigationController {
        let viewModel = StatisticsViewModel()
        let viewFactory = StatisticsViewFactory()
        let statisticsVc = StatisticsViewController(viewFactory: viewFactory, viewModel: viewModel)
        statisticsVc.title = "Statistics"
        let statistics = UINavigationController(rootViewController: statisticsVc)
        return statistics
    }
    
    private func createMore() -> UINavigationController {
        let viewModel = MoreViewModel()
        let viewFactory = MoreViewFactory()
        let moreVc = MoreViewController(viewFactory: viewFactory, viewModel: viewModel)
        moreVc.title = "More"
        let more = UINavigationController(rootViewController: moreVc)
        return more
    }
}
