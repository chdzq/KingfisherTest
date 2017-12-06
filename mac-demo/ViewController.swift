//
//  ViewController.swift
//  mac-demo
//
//  Created by 张奇 on 2017/12/7.
//  Copyright © 2017年 张奇. All rights reserved.
//

import Cocoa
import Kingfisher

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let imageView = NSImageView.init(frame: CGRect(x:0, y: 0, width: 100, height: 100))
        view.addSubview(imageView)
        let url = URL(string: "https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/kingfisher-2.jpg")!
        
        imageView.kf.setImage(with: url)

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

