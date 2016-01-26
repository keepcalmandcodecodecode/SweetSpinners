//
//  SweetSpinner.swift
//  Pods
//
//  Created by macmini1 on 25.01.16.
//
//

import Foundation
import UIKit
import UIViewSweets

public class SweetSpinner:UIView{
    public class func show(view:UIView)->SweetSpinner{
        let spinner = SweetSpinner(frame: CGRectMake(0,0,100,100))
        view.addSubview(spinner)
        spinner.center = CGPoint(x: view.width/2.0, y: view.height/2.0)
        return spinner
    }
    public class func hide(view:UIView){
        for view in view.subviews{
            if view is SweetSpinner{
                view.removeFromSuperview()
            }
        }
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.lightGrayColor()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
