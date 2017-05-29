//
//  Alerts.swift
//  genericClasses
//
//  Created by Sierra 4 on 29/05/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import Foundation
import UIKit
import NVActivityIndicatorView


class Loader: NSObject {
    
    static let shared = Loader()
    
    let viewTemp = UIView(frame: UIScreen.main.bounds)
    var loader = NVActivityIndicatorView(frame: CGRect(x: UIScreen.main.bounds.size.width/2 - 22, y: UIScreen.main.bounds.size.height/2 - 22 , w: 44, h: 44) , type: .ballTrianglePath, color: UIColor.white , padding: nil)
    
    
    func start() {
        
        guard let keyWindow = UIApplication.shared.keyWindow else { return }
        
        self.viewTemp.addSubview(self.loader)
        keyWindow.addSubview(viewTemp)
        self.viewTemp.backgroundColor = UIColor.black.withAlphaComponent(0.4)
        
        self.loader.startAnimating()
        self.viewTemp.isHidden = false
        
    }
    
    func stop() {
        
        self.loader.stopAnimating()
        self.viewTemp.isHidden = true
        
    }
    
    
    
}
