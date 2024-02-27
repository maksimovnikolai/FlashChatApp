//
//  WelcomeViewController.swift
//  FlashChatApp
//
//  Created by Nikolai Maksimov on 26.02.2024.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    private let welcomeView = WelcomeView()
    
    override func loadView() {
        view = welcomeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
}

