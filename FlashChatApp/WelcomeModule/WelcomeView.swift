//
//  WelcomeView.swift
//  FlashChatApp
//
//  Created by Nikolai Maksimov on 27.02.2024.
//

import UIKit

final class WelcomeView: UIView {
    
    // MARK: Private Properties
    private lazy var titleLabel = makeLabel()
    private lazy var registerButton = makeButton(title: "Register", 
                                                 textColor: UIColor(named: "BrandBlue") ?? .systemBlue,
                                                 backColor: UIColor(named: "BrandLightBlue") ?? .systemBlue)
    private lazy var logInButton = makeButton(title: "Log In", textColor: .white, backColor: .systemTeal)
    
    // MARK: Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Private Methods
extension WelcomeView {
    
    private func commonInit() {
        setupTitleLabelConstraints()
        setupLogInButtonConstraints()
        setupRegisterButtonConstraints()
        showIterationText()
    }
    
    private func showIterationText() {
        var charIndex = 0.0
        let titleText = "⚡️Flash Chat"
        for letter in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { timer in
                self.titleLabel.text?.append(letter)
            }
            charIndex += 1
        }
    }
}

// MARK: - Constraints
extension WelcomeView {
    
    private func setupTitleLabelConstraints() {
        addSubview(titleLabel)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
    
    private func setupLogInButtonConstraints() {
        addSubview(logInButton)
        logInButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logInButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            logInButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            logInButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            logInButton.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
    
    private func setupRegisterButtonConstraints() {
        addSubview(registerButton)
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            registerButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            registerButton.bottomAnchor.constraint(equalTo: logInButton.topAnchor, constant: 5),
            registerButton.heightAnchor.constraint(equalToConstant: 60),
        ])
    }
}

// MARK: - UI Elements
extension WelcomeView {
    
    private func makeLabel() -> UILabel {
        let label = UILabel()
        label.text = ""
        label.font = .boldSystemFont(ofSize: 50)
        label.textColor = UIColor(named: "BrandBlue")
        return label
    }
    
    private func makeButton(title: String, textColor: UIColor, backColor: UIColor) -> UIButton {
        let button = UIButton()
        button.configuration = .filled()
        button.configuration?.title = title
        button.configuration?.baseForegroundColor = textColor
        button.configuration?.baseBackgroundColor = backColor
        return button
    }
}
