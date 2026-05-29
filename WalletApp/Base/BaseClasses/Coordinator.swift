//
//  Coordinator.swift
//  WalletApp
//
//  Created by Vasif Mehdizada on 28.05.26.
//

import UIKit

protocol Coordinator: AnyObject {
    var children: [Coordinator] { get set }
    var router: UINavigationController { get set }
    
    func start()
}
