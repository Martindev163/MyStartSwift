//
//  MSetUpCellModel.swift
//  MyStartSwift
//
//  Created by MaHaoZhe on 2018/3/21.
//  Copyright © 2018年 HachiTech. All rights reserved.
//

import UIKit
import SwiftyJSON

class MSetUpCellModel: NSObject {
    var imageStr:String?
    var titleStr:String?
    
    
    
    func cellModelWithDictionary(dic:Dictionary<String,String>) -> MSetUpCellModel {
        let model = MSetUpCellModel.init()
        
        let dicData = JSON(dic)
        model.imageStr = dicData["imageName"].stringValue
        model.titleStr = dicData["titleName"].stringValue
        return model
    }
}



