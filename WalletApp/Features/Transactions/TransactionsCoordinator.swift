//
//  TransactionsCoordinator.swift
//  WalletApp
//
//  Created by Vasif Mehdizada on 29.05.26.
//

import UIKit

final class TransactionsCoordinator: Coordinator {
    weak public var parentCoordinator: Coordinator?
    public var children: [Coordinator] = []
    public var router: UINavigationController

    public init(
        router : UINavigationController,
    ) {
        self.router = router
    }
    
    func start() {
        let viewModel = TransactionsViewModel()
        let viewFactory = TransactionsViewFactory()
        let transactionsVc = TransactionsViewController(viewFactory: viewFactory, viewModel: viewModel)
        transactionsVc.title = "Transactions"
        router.pushViewController(transactionsVc, animated: false)
    }
}
