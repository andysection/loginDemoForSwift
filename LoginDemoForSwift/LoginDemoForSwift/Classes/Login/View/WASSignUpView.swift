//
//  WASSignUpView.swift
//  LoginDemoForSwift
//
//  Created by apple on 2017/9/6.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class WASSignUpView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        backgroundColor = UIColor.cyan
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
