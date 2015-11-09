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

        //取出JSON中的对象参数
        let food = Food(JSON: PersonModel.sharedInstance().food)
        let fruits = Fruits(JSON: food.fruit[0])
        print(fruits.fruit)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
