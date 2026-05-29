//
//  MoreCoordinator.swift
//  WalletApp
//
//  Created by Vasif Mehdizada on 29.05.26.
//

import UIKit

final class MoreCoordinator: Coordinator {
    weak public var parentCoordinator: Coordinator?
    public var children: [Coordinator] = []
    public var router: UINavigationController

    public init(
        router : UINavigationController,
    ) {
        self.router = router
    }
    
    func start() {
        let viewModel = MoreViewModel()
        let viewFactory = MoreViewFactory()
        let moreVc = MoreViewController(viewFactory: viewFactory, viewModel: viewModel)
        moreVc.title = "More"
        router.pushViewController(moreVc, animated: false)
    }
}
