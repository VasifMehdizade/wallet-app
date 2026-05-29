//
//  HomeCoordinator.swift
//  WalletApp
//
//  Created by Vasif Mehdizada on 29.05.26.
//

import UIKit

final class HomeCoordinator: Coordinator {
    weak public var parentCoordinator: Coordinator?
    
    public var children: [Coordinator] = []
    
    public var router: UINavigationController

    public init(
        router : UINavigationController
    ) {
        self.router = router
    }
    
    func start() {
        let viewModel = HomeViewModel()
        let viewFactory = HomeViewFactory()
        let homeVc = HomeViewController(viewFactory: viewFactory, viewModel: viewModel)
        homeVc.title = "Home"
        router.pushViewController(homeVc, animated: false)
    }
}
