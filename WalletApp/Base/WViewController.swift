//
//  WViewController.swift
//  WalletApp
//
//  Created by Vasif Mehdizada on 29.05.26.
//

import Foundation

class WViewController<
    ViewFactory: BaseViewFactoryProtocol,
    ViewModel: BaseViewModelProtocol
>: BaseViewController {
    
    let viewFactory: ViewFactory
    let viewModel: ViewModel
    
    init(
        viewFactory: ViewFactory,
        viewModel: ViewModel
    ) {
        self.viewFactory = viewFactory
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    @available(*, unavailable)
    public required init?(coder _: NSCoder) {
        fatalError("init(coder:)")
    }
}
