//
//  ViewController.swift
//  genericClasses
//
//  Created by Sierra 4 on 29/05/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit
import Material
import EZSwiftExtensions
import Hero

class ViewController: UIViewController {

    @IBOutlet var txtFieldUserName: TextField!
    
    @IBOutlet var txtFieldPassword: TextField!
    
    @IBOutlet var btnLogin: Button!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtFieldUserName.setTextField()
        txtFieldPassword.setTextField()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func btnLoginClick(_ sender: Any) {
        
    }

}

