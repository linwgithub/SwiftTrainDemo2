//
//  ViewController.swift
//  UI Train
//
//  Created by 林威 on 2018/6/22.
//  Copyright © 2018年 lvcd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // 显示图片
        let img = UIImage(named: "img1")
        let imgView = UIImageView(image: img)
        self.view.addSubview(imgView)
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

