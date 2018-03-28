//
//  MAlertView.swift
//  MyStartSwift
//
//  Created by MaHaoZhe on 2018/3/22.
//  Copyright © 2018年 HachiTech. All rights reserved.
//

import UIKit

enum MAlertType:NSInteger {
    case MAlertTwoBtnType = 1
    case MAlertOneBtnType
}

class MAlertView: UIView {

    private var bgView:UIView!
    private var titleLab:UILabel?
    private var contentLab:UILabel!
    private var leftBtn:UIButton?
    private var rightBtn:UIButton?
    private var centerBtn:UIButton?
    
    static let _shareAlertView = MAlertView()
    class func shareAlertView()->MAlertView{
        return _shareAlertView
    }
    
    func showAlert(type:MAlertType,title:String,content:String) -> Void {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        self.tag = 101
        delegate.window?.addSubview(self)
    }
    
    func HideAlert() -> Void {
        let delegate = UIApplication.shared.delegate as! AppDelegate
        delegate.window?.viewWithTag(101)?.removeFromSuperview()
    }
    
    private func loadAlertUI(type:MAlertType)->Void{
        backgroundColor = UIColor.black.withAlphaComponent(0.5)
    }
    
    
    
}
