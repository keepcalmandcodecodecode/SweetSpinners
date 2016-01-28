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

public protocol Spinner{
    func animate()
}
public enum SpinnerType{
    case FadingCircle, TwoCirclesSpinner
}
public class SweetSpinner:UIView{
    public class func show(view:UIView, withType:SpinnerType)->SweetSpinner{
        let spinnerView = SweetSpinner(frame: CGRectMake(0,0,100,100))
        let loaderView = buildLoaderView(withType, frame: spinnerView.bounds)
        spinnerView.addSubview(loaderView)
        view.addSubview(spinnerView)
        spinnerView.center = CGPoint(x: view.width/2.0, y: view.height/2.0)
        (loaderView as! Spinner).animate()
        return spinnerView
    }
    class func buildLoaderView(type:SpinnerType, frame:CGRect)->UIView{
        switch type{
        case .FadingCircle:
            return FadingCircleSpinner(frame: frame)
        case .TwoCirclesSpinner:
            return TwoCirclesSpinner(frame: frame)
        }
        
        
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
        self.backgroundColor = UIColor.clearColor()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
