//
//  ViewController.swift
//  SweetSpinners
//
//  Created by keepcalmandcodecodecode on 01/14/2016.
//  Copyright (c) 2016 keepcalmandcodecodecode. All rights reserved.
//

import UIKit
import UIViewSweets
import SweetSpinners

class ViewController: UIViewController {
    var showBtn:UIButton!
    var isSpinnerShowing:Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        showBtn = UIButton(type: .System)
        showBtn.frame = CGRect(x: 0, y: 0, width: 100, height: 80)
        showBtn.setTitle("Show", forState: .Normal)
        showBtn.setTitle("Show", forState: .Application)
        showBtn.addTarget(self, action: "show", forControlEvents: .TouchUpInside)
        self.view.addSubview(showBtn)
        // Do any additional setup after loading the view, typically from a nib.
    }
    func show(){
        if(isSpinnerShowing){
            SweetSpinner.hide(self.view)
            isSpinnerShowing = false
        } else {
            SweetSpinner.show(self.view)
            isSpinnerShowing = true
        }
    }
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        showBtn.center = CGPointMake(self.view.width/2.0,self.view.height - 100)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

