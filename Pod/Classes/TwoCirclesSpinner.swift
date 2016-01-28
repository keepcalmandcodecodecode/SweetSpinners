//
//  TwoCirclesSpinner.swift
//  Pods
//
//  Created by macmini1 on 28.01.16.
//
//

import Foundation
import UIKit

class TwoCirclesSpinner:UIView,Spinner{
    func upscaleAnimation()->CABasicAnimation{
        let animation = CABasicAnimation()
        animation.keyPath = "transform.scale"
        animation.fromValue = 0.1
        animation.toValue = 1.0
        animation.duration = 1
        animation.repeatCount = .infinity
        animation.removedOnCompletion = false
        animation.fillMode = kCAFillModeForwards
        animation.timingFunction = CAMediaTimingFunction.init(name: kCAMediaTimingFunctionLinear)
        return animation
    }
    func downscaleAnimation()->CABasicAnimation{
        let animation = CABasicAnimation()
        animation.keyPath = "transform.scale"
        animation.fromValue = 1.0
        animation.toValue = 0.1
        animation.duration = 1
        animation.repeatCount = .infinity
        animation.removedOnCompletion = false
        animation.fillMode = kCAFillModeForwards
        animation.timingFunction = CAMediaTimingFunction.init(name: kCAMediaTimingFunctionLinear)
        return animation
    }
    func animate(){
        let group = CAAnimationGroup()
        group.animations = [self.downscaleAnimation()]
        group.duration = 1
        group.repeatCount = .infinity
        group.removedOnCompletion = false
        self.layer.addAnimation(group, forKey: "fade")
    }
    override init(frame: CGRect) {
        super.init(frame:frame)
        self.backgroundColor = UIColor.clearColor()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func drawRect(rect: CGRect) {
        let ovalPath = UIBezierPath(ovalInRect: rect)
        UIColor.grayColor().setFill()
        ovalPath.fill()
    }

}