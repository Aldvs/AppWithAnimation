//
//  ViewController.swift
//  AppWithAnimation
//
//  Created by admin on 12.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coreAnimationView: UIView!
    
    private var animationStarted = false
    
    @IBAction func runCoreAnimation(_ sender: UIButton) {
        UIView.animate(
            withDuration: 0.5, //скорость анимации
            delay: 0, // задержка в анимации
            options: [.autoreverse, .repeat]) {
                if !self.animationStarted {
                    self.coreAnimationView.frame.origin.x -= 40
                    self.animationStarted.toggle()
                }
            }
        sender.pulsate()
    }
}

