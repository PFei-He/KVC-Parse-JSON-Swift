//
//  PersonModel.swift
//  KVC-Parse-JSON-Swift
//
//  Created by PFei_He on 15/11/9.
//  Copyright © 2015年 PFei_He. All rights reserved.
//

import UIKit

class Sports: PFModel {
    
    var one     = String()
    var two     = String()
}

class Fruits: PFModel {
    
    var fruit   = String()
}

class Food: PFModel {
    
    var meat    = String()
    var fruit   = Array<AnyObject>()
}

class PersonModel: PFModel {

    var name    = String()
    var age     = Int()
    var sex     = String()
    var phone   = Int()
    var address = Array<AnyObject>()
    var height  = Int()
    var weight  = Int()
    var food    = Dictionary<String, AnyObject>()
    var sport   = Array<AnyObject>()
    
    /**
     单例
     - Note:
     - Parameter 无参
     - Returns: PersonModel类的唯一实例
     */
    class func sharedInstance() -> PersonModel {
        struct sharedInstance {
            static var onceToken: dispatch_once_t = 0
            static var instance: PersonModel? = nil
        }
        dispatch_once(&sharedInstance.onceToken) { () -> Void in
            sharedInstance.instance = PersonModel()
        }
        return sharedInstance.instance!
    }
}
