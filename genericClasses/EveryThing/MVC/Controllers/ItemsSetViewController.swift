//
//  ItemsSetViewController.swift
//  genericClasses
//
//  Created by Aseem 14 on 30/05/17.
//  Copyright © 2017 Sierra 4. All rights reserved.
//

import UIKit

class ItemsSetViewController: UIViewController {

//MARK: OUTLETS
    
    @IBOutlet var collViewImages: UICollectionView!
    
//MARK: VARIABLES
    
    
//MARK: FUNCTIONS
    func initialiseVC() {
        self.view.backgroundColor = UIColor.color3
    }

    
//MARK: VC LIFE CYCLE
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initialiseVC()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
