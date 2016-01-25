//
//  SweetSpinner.swift
//  Pods
//
//  Created by macmini1 on 25.01.16.
//
//

import Foundation
import UIKit

public class SweetSpinner:UIView{
    public class func show(view:UIView)->SweetSpinner{
        let spinner = SweetSpinner(frame: view.bounds)
        view.addSubview(spinner)
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
        
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
