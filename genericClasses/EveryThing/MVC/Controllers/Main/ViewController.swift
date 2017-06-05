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
//MARK: OUTLETS
    @IBOutlet var txtFieldUserName: TextField!
    @IBOutlet var txtFieldPassword: TextField!
    @IBOutlet var btnLogin: Button!
    
//MARK: VARIABLES
    
    
//MARK: FUCTIONS
    func intialiseVC() {
        txtFieldUserName.setTextField()
        txtFieldPassword.setTextField()
        self.setbackgroundColor(color: UIColor.color1)
    }
    
    func setHeroIds() {
        txtFieldUserName.heroID = "login"
        txtFieldPassword.heroID = "login"
        
        txtFieldUserName.heroModifiers = [.cascade]
        txtFieldPassword.heroModifiers = [.cascade]
        
        btnLogin.heroID = "loginBtn"
        
    }
    
//MARK: VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        self.isHeroEnabled = true
        // Do any additional setup after loading the view, typically from a nib.
        intialiseVC()
        setHeroIds()
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//MARK: ACTIONS
    @IBAction func btnLogin(_ sender: Any) {
        print("Using hero pod to instantiate another VC")
//        Loader.shared.start()
//        Timer.runThisAfterDelay(seconds: 3) { () -> () in
//            print("Prints this 2 seconds later in main queue")
//            Loader.shared.stop()
//    }
        guard let afterLoginVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AfterLoginViewController") as? AfterLoginViewController else { return }
        self.presentVC(afterLoginVC)
        
        
        
    }

}

