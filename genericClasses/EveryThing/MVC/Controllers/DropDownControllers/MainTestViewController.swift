//
//  MainTestViewController.swift
//  genericClasses
//
//  Created by Aseem 14 on 07/06/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit
import DropDown

class MainTestViewController: UIViewController {

    //MARK: OUTLETS
    @IBOutlet var btnPickAView: UIButton!
    @IBOutlet var viewAnchor: UIView!
    
    //MARK: VARIABLES
    let pickAView = DropDown()
    
    //MARK: FUNCTIONS
    func setDropDown() {
        
//        pickAView.direction = .bottom
        pickAView.anchorView = viewAnchor
        pickAView.dataSource = ["Car", "Motorcycle", "Truck", "Car", "Motorcycle", "Truck", "Car", "Motorcycle", "Truck", "Car", "Motorcycle", "Truck", "Car", "Motorcycle", "Truck", "Car", "Motorcycle", "Truck", "Car", "Motorcycle", "Truck", "Car", "Motorcycle", "Truck"]
        
        pickAView.selectionAction = { [unowned self] (index, item) in
            self.btnPickAView.setTitle(item, for: .normal)
            self.hideDropDown(drop: self.pickAView)
        }
    }
    func showDropDown(drop: DropDown) {
        drop.show()
    }
    func hideDropDown(drop: DropDown) {
        drop.hide()
    }
    //MARK: VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setDropDown()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnPickAViewClick(_ sender: Any) {
        showDropDown(drop: pickAView)
    }
}
