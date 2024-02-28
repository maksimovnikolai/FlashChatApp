//
//  EmailView.swift
//  FlashChatApp
//
//  Created by Nikolai Maksimov on 28.02.2024.
//

import UIKit

final class EmailView: UIView {
    
    // MARK: Private Properties
    private lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "textfield")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var emailTextField: UITextField = {
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
        setupEmailTextFiledConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: Constraints
extension EmailView {
    
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
    
    private func setupEmailTextFiledConstraints() {
        addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            emailTextField.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -82),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 48),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -48)
        ])
    }
}
