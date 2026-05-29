//
//  HomeViewController.swift
//  WalletApp
//
//  Created by Vasif Mehdizada on 28.05.26.
//

import UIKit

final class HomeViewController: WViewController<HomeViewFactory, HomeViewModel> {
    
    private lazy var button: UIButton = {
        let text = UIButton()

        text.setTitle("Hello", for: .normal)
        text.setTitleColor(.white, for: .normal)

        return text
    }()
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            view.backgroundColor = .green
            
            view.addSubview(button)
            
        button.translatesAutoresizingMaskIntoConstraints = false
            
            NSLayoutConstraint.activate([
                button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                button.centerYAnchor.constraint(equalTo: view.centerYAnchor)
            ])
        }
}
