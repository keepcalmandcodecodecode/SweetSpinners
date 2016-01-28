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
    var smallCircle:CircleView
    var largeCircle:CircleView
    func upscaleAnimation()->CABasicAnimation{
        let animation = CABasicAnimation()
        animation.keyPath = "transform.scale"
        animation.fromValue = 0
        animation.toValue = 0.35
        animation.duration = 1.0
        animation.repeatCount = .infinity
        animation.removedOnCompletion = false
        animation.fillMode = kCAFillModeForwards
        animation.autoreverses = true
        animation.timingFunction = CAMediaTimingFunction.init(name: kCAMediaTimingFunctionLinear)
        return animation
    }
    func downscaleAnimation()->CABasicAnimation{
        let animation = CABasicAnimation()
        animation.keyPath = "transform.scale"
        animation.fromValue = 1.0
        animation.toValue = 0.35
        animation.duration = 1.0
        animation.repeatCount = .infinity
        animation.removedOnCompletion = false
        animation.autoreverses = true
        animation.fillMode = kCAFillModeForwards
        animation.timingFunction = CAMediaTimingFunction.init(name: kCAMediaTimingFunctionLinear)
        return animation
    }
    func animate(){
        largeCircle.layer.addAnimation(self.downscaleAnimation(), forKey: "downscaleAnimation")
        smallCircle.layer.addAnimation(self.upscaleAnimation(), forKey: "upscaleAnimation")
    }
    override init(frame: CGRect) {
        largeCircle = CircleView().useFillColor(UIColor.grayColor()).useBackgroundColor(UIColor.clearColor())
        smallCircle = CircleView().useFillColor(UIColor.lightGrayColor()).useBackgroundColor(UIColor.clearColor())
        super.init(frame:frame)
        self.backgroundColor = UIColor.clearColor()
        self.addSubview(largeCircle)
        self.addSubview(smallCircle)
    }
    required init?(coder aDecoder: NSCoder) {
        largeCircle = CircleView()
        smallCircle = CircleView()
        super.init(coder: aDecoder)
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        smallCircle.frame = CGRectMake(0, 0, self.width, self.height)
        smallCircle.center = CGPoint(x:self.width/2.0,y:self.height/2.0)
        largeCircle.frame = CGRectMake(0, 0, self.width, self.height)
        largeCircle.center = CGPoint(x:self.width/2.0,y:self.height/2.0)
        
    }
}