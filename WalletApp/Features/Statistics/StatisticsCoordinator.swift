//
//  StatisticsCoordinator.swift
//  WalletApp
//
//  Created by Vasif Mehdizada on 29.05.26.
//

import UIKit

final class StatisticsCoordinator: Coordinator {
    weak public var parentCoordinator: Coordinator?
    public var children: [Coordinator] = []
    public var router: UINavigationController

    public init(
        router : UINavigationController,
    ) {
        self.router = router
    }
    
    func start() {
        let viewModel = StatisticsViewModel()
        let viewFactory = StatisticsViewFactory()
        let statisticsVc = StatisticsViewController(viewFactory: viewFactory, viewModel: viewModel)
        statisticsVc.title = "Statistics"
        router.pushViewController(statisticsVc, animated: false)
    }
}
