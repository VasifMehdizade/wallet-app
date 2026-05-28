//
//  Coordinator.swift
//  WalletApp
//
//  Created by Vasif Mehdizada on 28.05.26.
//

import UIKit

protocol Coordinator {    
    var parentCoordinator: Coordinator? { get set }
    var children: [Coordinator] { get set }

    func start()
}
