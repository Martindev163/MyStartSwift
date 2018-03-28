//
//  MRootViewController.swift
//  MyStartSwift
//
//  Created by MaHaoZhe on 2018/3/16.
//  Copyright © 2018年 HachiTech. All rights reserved.
//

import UIKit

class MRootViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
    }
    
    func loadRightBtnsWithTitles(titleArr:NSArray) -> Void {
        
//        for i in 0..<titleArr.count {
//            var titleStr:String = titleArr[i] as! String
//            switch(i)
//            {
//            case 0:
//                do {
//                    let button1 = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: 18, height: 18))
//                    button1.setTitle("第一个", for: UIControlState.normal)
//                    button1.addTarget(self, action:#selector(firstRightBtnAction), for: UIControlEvents.touchUpInside)
//                }
//
//            case 1:
//                let firstBtn = UIBarButtonItem.init(title: titleStr, style: UIBarButtonItemStyle.plain, target: self, action: #selector(secondRightBtnAction(titleStr:)))
//            default:
//                print("...")
//            }
//
//
//
//        }
    }
    
    @objc func firstRightBtnAction() -> Void {
        
    }
    
    @objc func secondRightBtnAction(titleStr:NSString) -> Void {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
