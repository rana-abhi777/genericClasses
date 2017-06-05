//
//  AfterLoginViewController.swift
//  genericClasses
//
//  Created by Sierra 4 on 29/05/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit
import Material

class AfterLoginViewController: UIViewController {

    //MARK: OUTLETS
    @IBOutlet var lblShowDetails: UILabel!
    @IBOutlet var lblHeading: UILabel!
    
    @IBOutlet var btnBack: Button!
    
    //MARK: VARIABLES
    var userName: String?
    
    //MARK: FUNCTIONS
    func intialiseVC() {
        self.setbackgroundColor(color: UIColor.color2)
        lblShowDetails.text = "Welcome \(userName), "
    }
    func setHero() {
        btnBack.heroID = "login"
        
        lblHeading.heroID = "loginBtn"
        lblShowDetails.heroID = "loginBtn"
        
        lblShowDetails.heroModifiers = [.cascade]
        lblHeading.heroModifiers = [.cascade]
    }
    //VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()
        
        intialiseVC()
        setHero()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: ACTIONS
    
    @IBAction func btnBack(_ sender: Any) {
        
    }
    
}
