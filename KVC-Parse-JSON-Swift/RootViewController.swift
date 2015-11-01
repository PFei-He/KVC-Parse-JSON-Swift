//
//  RootViewController.swift
//  KVC-Parse-JSON-Swift
//
//  Created by PFei_He on 15/10/31.
//  Copyright (c) 2015年 PFei_He. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        let path = NSBundle.mainBundle().pathForResource("person", ofType: "json")
        let string = String(contentsOfFile: path!, encoding: NSUTF8StringEncoding, error: nil)
        let data = string?.dataUsingEncoding(NSUTF8StringEncoding)
        let dictionary: AnyObject? = NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableLeaves, error: nil)
        let model = RootModel(json: dictionary!)
        let like = Like(json: model.like[0])
        print(like.food)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
