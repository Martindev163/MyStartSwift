//
//  FourVC.swift
//  MyStartSwift
//
//  Created by MaHaoZhe on 2018/3/15.
//  Copyright © 2018年 HachiTech. All rights reserved.
//

import UIKit

class FourVC: MRootViewController,UITableViewDelegate,UITableViewDataSource {
    
    var _tableView:UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableview()
        
        let alert = MAlertView.shareAlertView()
        alert.showAlert(type: MAlertType.MAlertTwoBtnType, title: "哈哈", content: "哈哈哈哈哈哈哈哈")
        
        
    }
    
    //MARK:-
    //MARK:1.View生命周期
    func setupTableview() -> Void {
        _tableView = UITableView.init()
        self.view.addSubview(_tableView)
        
        _tableView.snp.makeConstraints { (make) in
            make.left.bottom.top.right.equalTo(self.view)
        }
        _tableView.register(MSetUpCell.classForCoder(), forCellReuseIdentifier: "MSetUpCell")
        _tableView.dataSource = self
        _tableView.delegate = self
        _tableView.separatorStyle = .none
        
    }
    
    //MARK:-
    //MARK:2.代理
    //MARK: 系统代理 继承
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MSetUpCell", for: indexPath) as! MSetUpCell
        cell.cellModel = dataArray[indexPath.row] as? MSetUpCellModel
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            break
        case 1:
            break
        case 2:
            break
        case 3:
            break
        case 4:
            do {
                let aboutVC = MAboutUsVC()
                navigationController?.pushViewController(aboutVC, animated: true)
            }
        case 5:
            break
        default:
            break
        }
    }
    
    //MARK: 自定义代理
    
    //MARK:-
    //MARK:3.用户交互
    
    //MARK:-
    //MARK:4.数据处理
    lazy var dataDic:NSMutableDictionary = {
        let tempDic = NSMutableDictionary.init()
        tempDic.setDictionary(["data":[
            ["imageName":"businessInforsetting","titleName":"商家资料"],
            ["imageName":"settingwork","titleName":"营业设置"],
            ["imageName":"settingMessage","titleName":"消息提醒"],
            ["imageName":"setChangePwd","titleName":"修改密码"],
            ["imageName":"aboutUs","titleName":"关于我们"],
            ["imageName":"setQuit","titleName":"退出登录"]
            ]])
        return tempDic
    }()
    
    lazy var dataArray:NSMutableArray = {
        var tempArr = NSMutableArray.init()
        for dic in (dataDic.value(forKey: "data") as! NSArray){
            let model = MSetUpCellModel.init().cellModelWithDictionary(dic: dic as! Dictionary<String, String>)
            tempArr.add(model)
        }
        return tempArr
    }()
    
    //MARK:-
    //MARK:5.其它
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //将数据转换model放入数组
    func transformDicToModel(dic:NSMutableDictionary) -> Void {
        
    }
}
