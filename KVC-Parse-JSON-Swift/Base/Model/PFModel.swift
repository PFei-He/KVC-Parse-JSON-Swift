//
//  PFModel.swift
//  KVC-Parse-JSON-Swift
//
//  Created by PFei_He on 15/11/6.
//  Copyright © 2015年 PFei_He. All rights reserved.
//

import Foundation

class PFModel: NSObject {
    
    ///JSON数据
    var JSON: AnyObject? {
        didSet {
            parseJSON(JSON)
        }
    }

    /**
     初始化
     - Note:
     - Parameter JSON: JSON数据
     - Returns:
     */
    convenience init(JSON: AnyObject?) {
        self.init()
        parseJSON(JSON)
    }
    
    ///解析JSON
    private func parseJSON(JSON: AnyObject?) {
        if JSON != nil && JSON is Dictionary<String, AnyObject> {
            setValuesForKeysWithDictionary(JSON as! Dictionary<String, AnyObject>)
        } else {
            print("The object isn't Dictionary<String, AnyObject>")
        }
    }
    
    //获取未被声明的对象
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        print("**Class->"+String(classForCoder), "UndefinedKey->"+key, "Value->"+String(value), "Type->"+String(value?.classForCoder)+"**")
    }
}
