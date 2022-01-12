//
//  ViewController.swift
//  AppWithAnimation
//
//  Created by admin on 12.01.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var coreAnimationView: UIView!
    @IBOutlet weak var springAnimationView: SpringView!
    
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
    
    @IBAction func runSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "pop"
        springAnimationView.curve = "easyInOut"
        springAnimationView.force = 2
        springAnimationView.duration = 1
        springAnimationView.delay = 0.3
        
        springAnimationView.animate()
        
        sender.animation = "squeeze"
        sender.animate()
    }
}

