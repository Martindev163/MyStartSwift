//
//  MCustomCell.swift
//  MyStartSwift
//
//  Created by MaHaoZhe on 2018/3/16.
//  Copyright © 2018年 HachiTech. All rights reserved.
//

import UIKit

class MCustomCell: UITableViewCell {

    var titleLab:UILabel!
    var subTitleLab:UILabel!
    var imageIconImgV:UIImageView!
    var cellModel:MOneTabCellModel?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.loadSubviews()
        
    }
    
    func loadSubviews() -> Void {
        
        self.titleLab = UILabel()
        self.contentView.addSubview(titleLab)
        self.titleLab.snp.makeConstraints { (make) in
            make.top.left.equalTo(self.contentView).offset(10)
            make.width.greaterThanOrEqualTo(100)
            make.height.equalTo(18)
        }
        self.titleLab.textColor = UIColor.black
        self.titleLab.textAlignment = NSTextAlignment.left
        self.titleLab.font = UIFont.systemFont(ofSize: 16)
        
        self.imageIconImgV = UIImageView()
        self.contentView.addSubview(imageIconImgV)
        self.imageIconImgV.snp.makeConstraints { (make) in
            make.top.equalTo(self.titleLab.snp.bottom).offset(5)
            make.left.equalTo(self.titleLab.snp.left)
            make.bottom.equalTo(self.contentView.snp.bottom).offset(-10)
            make.height.greaterThanOrEqualTo(20)
            make.width.equalTo(100)
        }

        self.subTitleLab = UILabel()
        self.contentView.addSubview(subTitleLab)
        self.subTitleLab.snp.makeConstraints { (make) in
            make.top.equalTo(self.titleLab.snp.bottom).offset(10)
            make.left.equalTo(self.imageIconImgV.snp.right).offset(10)
            make.right.equalTo(self.contentView.snp.right).offset(-10)
            make.bottom.equalTo(self.contentView.snp.bottom).offset(-10)
        }
        self.subTitleLab.textColor = UIColor.black
        self.subTitleLab.textAlignment = NSTextAlignment.left
        self.subTitleLab.font = UIFont.systemFont(ofSize: 14)
        self.subTitleLab.numberOfLines = 0
        
        self.titleLab.text = "标题"
//        self.imageIconImgV.image = UIImage.init(named: "")
        self.imageIconImgV.backgroundColor = UIColor.orange
        self.subTitleLab.text = "内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容内容"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
