//
//  RootModel.swift
//  KVC-Parse-JSON-Swift
//
//  Created by PFei_He on 15/10/31.
//  Copyright (c) 2015年 PFei_He. All rights reserved.
//

import UIKit

class Like: NSObject {
    
    var food = String()
    
    /**
    初始化
    - Parameter json: JSON对象
    - Returns:
    */
    init(json: AnyObject) {
        super.init()
        setValuesForKeysWithDictionary(json as! Dictionary<String, AnyObject>)
    }
    
    //获取未被声明的对象
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        print(key)
    }
}

class RootModel: NSObject {
    
    var name    = String()
    var age     = Int()
    var sex     = String()
    
    var other   = Dictionary<String, AnyObject>()
    var phone   = Int()
    var address = String()
    
    var more    = Dictionary<String, AnyObject>()
    var height  = Int()
    var weight  = Int()
    
    var like    = Array<AnyObject>()
   
    /**
    初始化
    - Parameter json: JSON对象
    - Returns:
    */
    init(json: AnyObject) {
        super.init()
        setValuesForKeysWithDictionary(json as! Dictionary<String, AnyObject>)
        setValuesForKeysWithDictionary(other)
        setValuesForKeysWithDictionary(more)
    }
    
    //获取未被声明的对象
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        print(key)
    }
}
