//
//  CubicOutEasing.swift
//  Pods
//
//  Created by macmini1 on 18.01.16.
//
//

import Foundation
import UIKit

public class CubicOutEasing:NSObject, EasingFunction {
    
    public func compute(t: CGFloat) -> CGFloat {
        return pow(t,0.33)
    }
    
    public func title() -> String {
        return "CubicOut"
    }
}