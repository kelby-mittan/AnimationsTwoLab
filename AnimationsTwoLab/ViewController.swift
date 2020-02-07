//
//  ViewController.swift
//  AnimationsTwoLab
//
//  Created by Kelby Mittan on 2/6/20.
//  Copyright © 2020 Kelby Mittan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let mainView = MainView()
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView.backgroundColor = .systemBackground
        setupButtonTargets()
    }
    
    
    private func setupButtonTargets() {
        mainView.linearButton.addTarget(self, action: #selector(hideShowBallImage(sender:)), for: .touchUpInside)
        mainView.easeInButton.addTarget(self, action: #selector(hideShowBallImage(sender:)), for: .touchUpInside)
        mainView.easeOutButton.addTarget(self, action: #selector(hideShowBallImage(sender:)), for: .touchUpInside)
        mainView.easeInOutButton.addTarget(self, action: #selector(hideShowBallImage(sender:)), for: .touchUpInside)
        mainView.animateButton.addTarget(self, action: #selector(animateBalls(sender:)), for: .touchUpInside)
        mainView.resetButton.addTarget(self, action: #selector(resetBalls(sender:)), for: .touchUpInside)
    }
    
    @IBAction func hideShowBallImage(sender: UIButton) {
        switch sender.tag {
        case 1:
            mainView.linearBallImage.isHidden.toggle()
        case 2:
            mainView.easeInBallImage.isHidden.toggle()
        case 3:
            mainView.easeOutBallImage.isHidden.toggle()
        case 4:
            mainView.easeInOutBallImage.isHidden.toggle()
        default:
            break
        }
    }
    
//    private func linearAnimate() {
//        mainView.linearBallImage.startAnimating()
//    }
    
    
    @IBAction func animateBalls(sender: UIButton) {
        
        UIView.animate(withDuration: 1.5, delay: 0.0, options: [.curveLinear], animations: {
            self.mainView.linearBallImage.transform = CGAffineTransform(translationX: 0, y: 550)
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 0.0, options: [.curveEaseIn], animations: {
            self.mainView.easeInBallImage.transform = CGAffineTransform(translationX: 0, y: 550)
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 0.0, options: [.curveEaseOut], animations: {
            self.mainView.easeOutBallImage.transform = CGAffineTransform(translationX: 0, y: 550)
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 0.0, options: [.curveEaseInOut], animations: {
            self.mainView.easeInOutBallImage.transform = CGAffineTransform(translationX: 0, y: 550)
        }, completion: nil)
    }
    
    @IBAction func resetBalls(sender: UIButton) {
        
        UIView.animate(withDuration: 1.5, delay: 0.0, options: [.curveLinear], animations: {
            self.mainView.linearBallImage.transform = CGAffineTransform(translationX: 0, y: 0)
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 0.0, options: [.curveEaseIn], animations: {
            self.mainView.easeInBallImage.transform = CGAffineTransform(translationX: 0, y: 0)
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 0.0, options: [.curveEaseOut], animations: {
            self.mainView.easeOutBallImage.transform = CGAffineTransform(translationX: 0, y: 0)
        }, completion: nil)
        
        UIView.animate(withDuration: 1.5, delay: 0.0, options: [.curveEaseInOut], animations: {
            self.mainView.easeInOutBallImage.transform = CGAffineTransform(translationX: 0, y: 0)
        }, completion: nil)
        
    }
    
}

