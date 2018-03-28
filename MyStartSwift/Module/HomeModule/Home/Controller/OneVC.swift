//
//  OneVC.swift
//  MyStartSwift
//
//  Created by MaHaoZhe on 2018/3/15.
//  Copyright © 2018年 HachiTech. All rights reserved.
//

import UIKit

class OneVC: MRootViewController,UITableViewDataSource,UITableViewDelegate {

    var _tableview:UITableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(_tableview)
        
        _tableview.snp.makeConstraints { (make)->Void in
            make.top.left.right.bottom.equalTo(self.view)
        }
        _tableview.dataSource = self
        _tableview.delegate = self
        _tableview.register(MCustomCell.classForCoder(), forCellReuseIdentifier:"cell")
        _tableview.estimatedRowHeight = 44.0
        _tableview.rowHeight = UITableViewAutomaticDimension
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell:MCustomCell = tableView.dequeueReusableCell(withIdentifier:"cell", for: indexPath) as! MCustomCell
        tableViewCell.selectionStyle = UITableViewCellSelectionStyle.none
//        tableViewCell.textLabel?.text = "哈哈"
//        tableViewCell.textLabel?.textColor = UIColor.black
        return tableViewCell
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
