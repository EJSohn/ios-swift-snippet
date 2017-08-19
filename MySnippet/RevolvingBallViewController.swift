//
//  RevolvingBallViewController.swift
//  MySnippet
//
//  Created by 손은주 on 2017. 8. 19..
//  Copyright © 2017년 ejsohn. All rights reserved.
//

import UIKit

class RevolvingBallViewController: UIViewController {
    @IBOutlet weak var sun: UIImageView!
    @IBOutlet weak var earth: UIImageView!
    @IBOutlet weak var venus: UIImageView!
    @IBOutlet weak var mercury: UIImageView!
    @IBOutlet weak var martian: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mercury.addReVolvingAnimation(radius: 70, duration: 7)
        venus.addReVolvingAnimation(radius: 100, duration: 10)
        earth.addReVolvingAnimation(radius: 140, duration: 12)
        martian.addReVolvingAnimation(radius: 220, duration: 8)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    /*
    func makeACircle() {
        ball.layer.cornerRadius = ball.bounds.size.width / 2
        ball.layer.masksToBounds = true
    }
    */
    
    /*
    func addAnimation(view: UIView) {
        let orbit = CAKeyframeAnimation(keyPath: "position")
        
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: 0,y: 0),
                                      radius:  CGFloat(150),
                                      startAngle: CGFloat(0),
                                      endAngle:CGFloat(Double.pi * 2), clockwise: false)
        
        orbit.path = circlePath.cgPath
        orbit.duration = 5
        orbit.isAdditive = true
        orbit.repeatCount = 100
        orbit.calculationMode = kCAAnimationPaced
        orbit.rotationMode = kCAAnimationRotateAuto
        
        view.layer.add(orbit, forKey: "orbit")
    }
     */
}

extension UIImageView {
    func addReVolvingAnimation(radius: Float, duration: CFTimeInterval) {
        let orbit = CAKeyframeAnimation(keyPath: "position")
        
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: 0,y: 0),
                                      radius:  CGFloat(radius),
                                      startAngle: CGFloat(0),
                                      endAngle:CGFloat(Double.pi * 2), clockwise: false)
        
        orbit.path = circlePath.cgPath
        orbit.duration = duration
        orbit.isAdditive = true
        orbit.repeatCount = 100
        orbit.calculationMode = kCAAnimationPaced
        orbit.rotationMode = kCAAnimationRotateAuto
        
        self.layer.add(orbit, forKey: "orbit")
    }
}
