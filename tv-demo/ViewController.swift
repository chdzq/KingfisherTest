//
//  ViewController.swift
//  tv-demo
//
//  Created by 张奇 on 2017/12/7.
//  Copyright © 2017年 张奇. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let imageView = UIImageView.init(frame: CGRect(x:0, y: 0, width: 100, height: 100))
        view.addSubview(imageView)
        let url = URL(string: "https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/kingfisher-2.jpg")!
        
        imageView.kf.setImage(with: url)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

