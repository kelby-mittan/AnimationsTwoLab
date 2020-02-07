//
//  MainView.swift
//  AnimationsTwoLab
//
//  Created by Kelby Mittan on 2/6/20.
//  Copyright © 2020 Kelby Mittan. All rights reserved.
//

import UIKit

class MainView: UIView {
    
    lazy var buttonStackView: UIStackView = {
        let buttonStack = UIStackView()
        buttonStack.axis = .horizontal
        buttonStack.alignment = .center
        buttonStack.distribution = .equalSpacing
        buttonStack.spacing = 10
        return buttonStack
    }()
    
    lazy var linearButton: UIButton = {
        let button = UIButton()
        button.setTitle("linear", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.tag = 1
        return button
    }()
    
    lazy var easeInButton: UIButton = {
        let button = UIButton()
        button.setTitle("easeIn", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.tag = 2
        return button
    }()
    
    lazy var easeOutButton: UIButton = {
        let button = UIButton()
        button.setTitle("easeOut", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.tag = 3
        return button
    }()
    
    lazy var easeInOutButton: UIButton = {
        let button = UIButton()
        button.setTitle("easeInOut", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.tag = 4
        return button
    }()
    
    lazy var linearBallImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "beach-ball")
        return imageView
    }()
    
    lazy var easeInBallImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "beach-ball")
        return imageView
    }()
    
    lazy var easeOutBallImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "beach-ball")
        return imageView
    }()
    
    lazy var easeInOutBallImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "beach-ball")
        return imageView
    }()
    
    lazy var resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("reset", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
//        button.backgroundColor = .systemTeal
        return button
    }()
    
    lazy var animateButton: UIButton = {
        let button = UIButton()
        button.setTitle("animate", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
//        button.backgroundColor = .systemTeal
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        addSubviews()
        addStackSubviews()
        constrainEaseInOutButton()
        constrainEaseOutButton()
        constrainEaseInButton()
        constrainLinearButton()
        setupStackViewConstraints()
        setupLinearBallConstraints()
        setupResetButtonConstraint()
        setupAnimateButtonConstraint()
        setupEaseInBallConstraints()
        setupEaseOutBallConstraints()
        setupEaseInOutBallConstraints()
    }
    
    private func addSubviews() {
        addSubview(buttonStackView)
        addSubview(easeInOutButton)
        addSubview(easeOutButton)
        addSubview(easeInButton)
        addSubview(linearButton)
        addSubview(linearBallImage)
        addSubview(easeInBallImage)
        addSubview(easeOutBallImage)
        addSubview(easeInOutBallImage)
        addSubview(resetButton)
        addSubview(animateButton)
    }
    
    private func addStackSubviews() {
        buttonStackView.addSubview(easeInOutButton)
        buttonStackView.addSubview(easeOutButton)
        buttonStackView.addSubview(easeInButton)
        buttonStackView.addSubview(linearButton)
    }
    
    private func constrainEaseInOutButton() {
        easeInOutButton.translatesAutoresizingMaskIntoConstraints = false
        easeInOutButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        easeInOutButton.trailingAnchor.constraint(equalTo: buttonStackView.trailingAnchor).isActive = true
    }
    
    private func constrainEaseOutButton() {
        easeOutButton.translatesAutoresizingMaskIntoConstraints = false
        easeOutButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        easeOutButton.trailingAnchor.constraint(equalTo: easeInOutButton.leadingAnchor, constant: -25).isActive = true
    }
    
    private func constrainEaseInButton() {
        easeInButton.translatesAutoresizingMaskIntoConstraints = false
        easeInButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        easeInButton.leadingAnchor.constraint(equalTo: linearButton.trailingAnchor, constant: 45).isActive = true
    }
    
    private func constrainLinearButton() {
        linearButton.translatesAutoresizingMaskIntoConstraints = false
        linearButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    
    private func setupStackViewConstraints() {
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buttonStackView.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            buttonStackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            buttonStackView.heightAnchor.constraint(equalToConstant: 50),
            buttonStackView.widthAnchor.constraint(equalTo: safeAreaLayoutGuide.widthAnchor, multiplier: 0.85),
        ])
    }
    
    private func setupLinearBallConstraints() {
        linearBallImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            linearBallImage.widthAnchor.constraint(equalToConstant: 50),
            linearBallImage.heightAnchor.constraint(equalToConstant: 50),
            linearBallImage.centerXAnchor.constraint(equalTo: linearButton.centerXAnchor),
            linearBallImage.topAnchor.constraint(equalTo: buttonStackView.bottomAnchor, constant: 20)
        ])
    }
    
    private func setupEaseInBallConstraints() {
        easeInBallImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            easeInBallImage.widthAnchor.constraint(equalToConstant: 50),
            easeInBallImage.heightAnchor.constraint(equalToConstant: 50),
            easeInBallImage.centerXAnchor.constraint(equalTo: easeInButton.centerXAnchor),
            easeInBallImage.topAnchor.constraint(equalTo: buttonStackView.bottomAnchor, constant: 20)
        ])
    }
    
    private func setupEaseOutBallConstraints() {
        easeOutBallImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            easeOutBallImage.widthAnchor.constraint(equalToConstant: 50),
            easeOutBallImage.heightAnchor.constraint(equalToConstant: 50),
            easeOutBallImage.centerXAnchor.constraint(equalTo: easeOutButton.centerXAnchor),
            easeOutBallImage.topAnchor.constraint(equalTo: buttonStackView.bottomAnchor, constant: 20)
        ])
    }
    
    private func setupEaseInOutBallConstraints() {
        easeInOutBallImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            easeInOutBallImage.widthAnchor.constraint(equalToConstant: 50),
            easeInOutBallImage.heightAnchor.constraint(equalToConstant: 50),
            easeInOutBallImage.centerXAnchor.constraint(equalTo: easeInOutButton.centerXAnchor),
            easeInOutBallImage.topAnchor.constraint(equalTo: buttonStackView.bottomAnchor, constant: 20)
        ])
    }
    
    private func setupResetButtonConstraint() {
        resetButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            resetButton.leadingAnchor.constraint(equalTo: buttonStackView.leadingAnchor),
            resetButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    
    private func setupAnimateButtonConstraint() {
        animateButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            animateButton.trailingAnchor.constraint(equalTo: buttonStackView.trailingAnchor),
            animateButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
}
