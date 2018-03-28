//
//  MRootTabbarVC.swift
//  MyStartSwift
//
//  Created by MaHaoZhe on 2018/3/14.
//  Copyright © 2018年 HachiTech. All rights reserved.
//

import UIKit
import SnapKit

class MRootTabbarVC: UITabBarController,UITabBarControllerDelegate {
    
    var items:NSArray = []
    let NameArr = ["订单","产品","消息","设置"]
    let PicArr = ["order_normal","produce_normal","message_normal","seting_normal"]
    let PicSelectArr = ["order_selected","produce_selected","message_selected","setting_selected"]
    let VCArr = [OneVC(),TwoVC(),ThreeVC(),FourVC()]
    //初始化数组
    var NavVCArr:[NSObject] = [NSObject]()
    var nav:UINavigationController = UINavigationController()
    var tabBarBgView:UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.createTabbar()
        
        //添加背景色
        createTabbarItemBackView()
    }
    
    //MARK:-
    //MARK:1.View生命周期
    
    /// 初始化tabbarItme
    ///
    /// - Parameters:
    ///   - index: Item下标
    ///   - controller: 初始化的控制器
    /// - Returns: 返回NavigationVC
    func setupTabbarItems(index:NSInteger,controller:UIViewController) -> BaseNavigationController {
        controller.title = NameArr[index]
        
        let navigationVC = BaseNavigationController.init(rootViewController: controller)
        
        controller.tabBarItem.image = UIImage.init(named: PicArr[index])?.withRenderingMode(.alwaysOriginal)
        
        controller.tabBarItem.selectedImage = UIImage.init(named: PicSelectArr[index])?.withRenderingMode(.alwaysOriginal)
    controller.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor:UIColor.init(red: 74/255.0, green: 144/255.0, blue: 226/255.0, alpha: 1.0)], for: UIControlState.normal)
    controller.tabBarItem.setTitleTextAttributes([NSAttributedStringKey.foregroundColor:UIColor.white], for: UIControlState.selected)
        
        return navigationVC
    }
    
    /// 创建tabbar的选中背景色
    func createTabbarItemBackView() -> Void {
        let itemBgW:CGFloat = UIScreen.main.bounds.size.width/4.0
        tabBarBgView = UIImageView.init(frame: CGRect.init(x: 0, y: 0, width: itemBgW, height: 49))
        tabBarBgView.backgroundColor = UIColor.init(red: 74/255.0, green: 144/255.0, blue: 226/255.0, alpha: 1.0)
        tabBar.addSubview(tabBarBgView)
        tabBar.sendSubview(toBack: tabBarBgView)
    }
    
    /// 创建tabbar
    func createTabbar() {
        self.delegate = self
        
        //模块一
        let oneVC = OneVC()
        let oneNav = setupTabbarItems(index: 0, controller: oneVC)
        
        //模块二
        let twoVC = TwoVC()
        let twoNav = setupTabbarItems(index: 1, controller: twoVC)
        
        //模块三
        let threeVC = ThreeVC()
        let threeNav = setupTabbarItems(index: 2, controller: threeVC)
        
        //模块四
        let fourVC = FourVC()
        let fourNav = setupTabbarItems(index: 3, controller: fourVC)
        
        items = [oneNav,twoNav,threeNav,fourNav]
        self.viewControllers = items as? [UIViewController]
        
        self.tabBarController?.tabBar.backgroundColor = UIColor.white
        
        self.tabBar.barTintColor = UIColor.white
    }
    
    //MARK:-
    //MARK:2.代理
    //MARK: 系统代理 继承
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        let itemBgW:CGFloat = UIScreen.main.bounds.size.width/4.0
        let index:CGFloat = CGFloat(tabBarController.selectedIndex)
        tabBarBgView.frame = CGRect.init(x: index*itemBgW, y: 0, width: itemBgW, height: 49)
    }
    
    //MARK: 自定义代理
    
    //MARK:-
    //MARK:3.用户交互
    
    //MARK:-
    //MARK:4.数据处理
    
    //MARK:-
    //MARK:5.其它
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
