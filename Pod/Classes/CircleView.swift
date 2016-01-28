//
//  CircleView.swift
//  Pods
//
//  Created by macmini1 on 28.01.16.
//
//

import Foundation
import UIKit

class CircleView:UIView{
    var fillColor:UIColor = UIColor.grayColor()
    override init(frame: CGRect) {
        super.init(frame:frame)
        self.backgroundColor = UIColor.clearColor()
    }
    func useFillColor(color:UIColor)->CircleView{
        self.fillColor = color
        return self
    }
    func useBackgroundColor(color:UIColor)->CircleView{
        self.backgroundColor = color
        return self
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func drawRect(rect: CGRect) {
        let ovalPath = UIBezierPath(ovalInRect: rect)
        self.fillColor.setFill()
        ovalPath.fill()
    }
}