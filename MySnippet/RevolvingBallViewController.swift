//
//  RevolvingBallViewController.swift
//  MySnippet
//
//  Created by 손은주 on 2017. 8. 19..
//  Copyright © 2017년 ejsohn. All rights reserved.
//

import UIKit

class RevolvingBallViewController: UIViewController {
    @IBOutlet weak var ball: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        makeACircle()
        addAnimation()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    func makeACircle() {
        ball.layer.cornerRadius = ball.bounds.size.width / 2
        ball.layer.masksToBounds = true
    }
    
    func addAnimation() {
        /// Add circling ball animation
        let orbit = CAKeyframeAnimation(keyPath: "position")
        var affineTransform = CGAffineTransform(rotationAngle: 0.0)
        affineTransform = affineTransform.rotated(by: CGFloat(Double.pi))
        let circlePath = UIBezierPath(arcCenter: CGPoint(x: 0,y: 0), radius:  CGFloat(50), startAngle: CGFloat(0), endAngle:CGFloat(Double.pi * 2), clockwise: false)
        orbit.path = circlePath.cgPath
        orbit.duration = 6
        orbit.isAdditive = true
        orbit.repeatCount = 100
        orbit.calculationMode = kCAAnimationPaced
        orbit.rotationMode = kCAAnimationRotateAuto
        
        ball.layer.add(orbit, forKey: "orbit")
    }
}
