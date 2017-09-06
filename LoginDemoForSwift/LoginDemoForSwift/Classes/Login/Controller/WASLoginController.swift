//
//  WASLoginController.swift
//  LoginDemoForSwift
//
//  Created by apple on 2017/9/6.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class WASLoginController: UIViewController {
    // MARK: - property
    static let viewWidth:CGFloat = 150.0
    static let zTransform:CGFloat = 50.0
    
    let loginView = WASLoginView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 100))
    let signUpView = WASSignUpView(frame: CGRect(x: 0, y: 200, width: UIScreen.main.bounds.width, height: 100))
    let LoginTransformForward = CATransform3DMakeTranslation(viewWidth / 3, 0, zTransform)
    let LoginTransformBackward = CATransform3DMakeTranslation(viewWidth / 3, 0, -zTransform)
    let SignTransformBackward = CATransform3DMakeTranslation(-viewWidth / 3, 0, -zTransform)
    let SignTransformForward = CATransform3DMakeTranslation(-viewWidth / 3, 0, zTransform)
    
//    let animKeyframeLoginBackward = 
    // MARK: - funjction
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        view.addSubview(loginView)
        view.addSubview(signUpView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /// 获取关键帧动画
    ///
    /// - parameter TargetTransform     : 起始位置
    /// - parameter fromTransform       : 最终位置
    /// - returns : CAKeyframeAnimation
    func getKeyFrameAnimation(TargetTransform:CATransform3D, fromTransform:CATransform3D) -> CAKeyframeAnimation {
        let anim:CAKeyframeAnimation = CAKeyframeAnimation(keyPath: "transform")
        
        let value1 = NSValue(caTransform3D: TargetTransform)
        let value2 = NSValue(caTransform3D: CATransform3DIdentity)
        let value3 = NSValue(caTransform3D: fromTransform)
        
        anim.values = [value1, value2, value3]
        anim.duration = 0.5
        anim.fillMode = kCAFillModeForwards
        anim.isRemovedOnCompletion = false
        anim.timingFunctions = [CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)]
        return anim
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
