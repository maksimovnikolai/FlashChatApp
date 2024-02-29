//
//  PasswordView.swift
//  FlashChatApp
//
//  Created by Nikolai Maksimov on 29.02.2024.
//

import UIKit

final class PasswordView: UIView {
    
    // MARK: Private Properties
    private lazy var registerButton: UIButton = {
        let button = UIButton()
        button.configuration = .plain()
        button.configuration?.title = "Register"
        button.configuration?.baseForegroundColor = UIColor(named: "BrandBlue")
        return button
    }()
    
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "textfield")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.font = .systemFont(ofSize: 25)
        tf.textColor = UIColor(named: "BrandBlue")
        tf.textAlignment = .center
        tf.minimumFontSize = 17
        return tf
    }()
    
    // MARK: Init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupImageViewConstraints()
        setupRegisterButtonConstraints()
        setupEmailTextFiledConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Constraitns
extension PasswordView {
    
    private func setupImageViewConstraints() {
        addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20)
        ])
        imageView.setContentHuggingPriority(.init(251), for: .horizontal)
        imageView.setContentHuggingPriority(.init(251), for: .vertical)
    }
    
    private func setupRegisterButtonConstraints() {
        addSubview(registerButton)
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            registerButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 31),
            registerButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            registerButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            registerButton.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    
    private func setupEmailTextFiledConstraints() {
        addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            passwordTextField.rightAnchor.constraint(equalTo: rightAnchor, constant: 48),
            passwordTextField.leftAnchor.constraint(equalTo: leftAnchor, constant: 49),
            passwordTextField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 82),
            passwordTextField.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            passwordTextField.bottomAnchor.constraint(equalTo: registerButton.topAnchor, constant: 31),
        ])
    }
}
