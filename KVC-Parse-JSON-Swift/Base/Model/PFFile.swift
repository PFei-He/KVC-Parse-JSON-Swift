//
//  PFFile.swift
//  KVC-Parse-JSON-Swift
//
//  Created by PFei_He on 15/11/9.
//  Copyright © 2015年 PFei_He. All rights reserved.
//

import UIKit

class PFFile: NSObject {

    /**
     读取JSON文件
     - Note:
     - Parameter fileName: 文件名
     - Returns:
     */
    class func fileName(name: String) -> Dictionary<String, AnyObject> {
        let path = NSBundle.mainBundle().pathForResource(name, ofType: "json")
        let string = try? String(contentsOfFile: path!, encoding: NSUTF8StringEncoding)
        let data = string?.dataUsingEncoding(NSUTF8StringEncoding)
        let dictionary = try? NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableLeaves)
        return dictionary as! Dictionary<String, AnyObject>
    }
}
