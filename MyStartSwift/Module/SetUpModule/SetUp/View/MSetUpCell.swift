//
//  MSetUpCell.swift
//  MyStartSwift
//
//  Created by MaHaoZhe on 2018/3/21.
//  Copyright © 2018年 HachiTech. All rights reserved.
//

import UIKit

class MSetUpCell: UITableViewCell {
    
    /// icon图标
    var iconImageView:UIImageView!
    
    /// 标题
    var titleLab:UILabel!
    
    /// 辅助图标
    var assistImageView:UIImageView!
    
    var cellModel:MSetUpCellModel?{
        didSet {
            iconImageView.image = UIImage.init(named: (cellModel?.imageStr)!)
            titleLab.text = cellModel?.titleStr
        }
    }
    

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        
        //加载子控件
        setupSubviews()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /// 记载子控件
    func setupSubviews() -> Void {
        iconImageView = UIImageView.init()
        contentView.addSubview(iconImageView)
        iconImageView.snp.makeConstraints { (make) in
            make.left.equalTo(contentView).offset(10)
            make.width.height.equalTo(20)
            make.centerY.equalTo(contentView.snp.centerY)
        }
        
        
        titleLab = UILabel.init()
        contentView.addSubview(titleLab)
        titleLab.text = "哈哈哈哈哈哈哈哈哈哈哈"
        titleLab.snp.makeConstraints { (make) in
            make.left.equalTo(iconImageView.snp.right).offset(10)
            make.centerY.equalTo(iconImageView.snp.centerY)
            make.width.equalTo(150)
            make.height.equalTo(contentView.snp.height)
        }
        titleLab.font = UIFont.systemFont(ofSize: 14)
        titleLab.textColor = UIColor.black
        
        assistImageView = UIImageView.init()
        contentView.addSubview(assistImageView)
        assistImageView.snp.makeConstraints { (make) in
            make.right.equalTo(contentView.snp.right).offset(-10)
            make.centerY.equalTo(contentView.snp.centerY)
            make.width.equalTo(8)
            make.height.equalTo(12)
        }
        assistImageView.image = UIImage.init(named: "Common_TurnIn_Arrow")
        
        let line:UIView = UIView.init()
        contentView.addSubview(line)
        line.snp.makeConstraints { (make) in
            make.left.bottom.right.equalTo(contentView)
            make.height.equalTo(0.5)
        }
        line.backgroundColor = UIColor.init(red: 220/255.0, green: 220/255.0, blue: 220/255.0, alpha: 1)
    }
    
    
}
