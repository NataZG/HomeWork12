//
//  StartVC.swift
//  HomeWork12
//
//  Created by Nata on 22.06.2021.
//

import UIKit

class StartVC: UIViewController {
    
    @IBOutlet weak var startText: UILabel!
    
    var name = ""
    
        override func viewDidLoad() {
            super.viewDidLoad()
            
            startText.text = name
        }
    deinit {
        print("StartVC deinited")
    }
    }
