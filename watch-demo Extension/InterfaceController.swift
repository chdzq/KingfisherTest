//
//  InterfaceController.swift
//  watch-demo Extension
//
//  Created by 张奇 on 2017/12/7.
//  Copyright © 2017年 张奇. All rights reserved.
//

import WatchKit
import Foundation
import Kingfisher


class InterfaceController: WKInterfaceController {
    @IBOutlet var interfaceImageView: WKInterfaceImage!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        let url = URL(string: "https://raw.githubusercontent.com/onevcat/Kingfisher/master/images/kingfisher-3.jpg")!
        _ = KingfisherManager.shared.retrieveImage(with: url, options: nil, progressBlock: nil) { (image, error, cacheType, imageURL) -> () in
            self.interfaceImageView.setImage(image)
        }

    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
