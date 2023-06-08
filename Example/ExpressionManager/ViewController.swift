//
//  ViewController.swift
//  ExpressionManager
//
//  Created by V on 02/21/2023.
//  Copyright (c) 2023 V. All rights reserved.
//

import UIKit
import ExpressionManager

class ViewController: UIViewController {
    
    lazy var label = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(label)
        label.frame.origin.y = 300
        label.textColor = .black
        
        //1初始化
        //1.1默认资源
        ExpressionManager.loadDefaultData()
        //1.2自定义资源
        //ExpressionManager.loadUseData(pattern: "",dic: nil, images: nil)
        
        //2使用
        //+
        label.expression.load(text: "[伤心]", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: UIColor.black])
        //重新
        label.expression.reload(text: "[伤心]", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: UIColor.black])
        
        label.sizeToFit()
//        #通过属性封装器的expression添加表情
//
//        #expressionAttributed是添加表情后的富文本
//
//        #expressionString用于添加表情后的文本匹配（rang）的准确
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

