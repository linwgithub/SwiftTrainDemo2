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
        
        // 捕获屏幕方向切换事件
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.orientationChange(_:)), name: NSNotification.Name.UIDeviceOrientationDidChange, object: nil)
    }
    
    @objc func orientationChange(_ notification: Notification) {
        // 获得当前运行的设备
        let device = UIDevice.current
        switch device.orientation
        {
        case .portrait:
            print("面向设备保存垂直，home 键位于下方")
        case .portraitUpsideDown:
            print("面向设备保存垂直，home 键位于上方")
        case .landscapeLeft:
            print("面向设备保存垂直，home 键位于左侧")
        case .landscapeRight:
            print("面向设备保存垂直，home 键位于右侧")
        case .faceUp:
            print("设备平放，home 键朝上")
        case .faceDown:
            print("设备平放，home 键朝下")
        case .unknown:
            print("方向未知")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

